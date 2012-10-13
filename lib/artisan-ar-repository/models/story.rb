require 'artisan/stories/pert_calculator'

class Story < ActiveRecord::Base
  belongs_to :project
  belongs_to :iteration
  belongs_to :assigned_user, :class_name => "User"
  belongs_to :creator, :class_name => "User"
  acts_as_taggable

  default_scope where("deleted = ?", false).order("position ASC")

  scope :completed, where("complete = ?", true).order("position ASC")
  scope :ready, where("assigned_user_id IS NULL AND (complete = ? OR complete IS NULL)", false).order("position ASC")
  scope :working, where("assigned_user_id IS NOT NULL AND (complete = ? OR complete IS NULL)", false).order("position ASC")
  scope :for_user, lambda { |user| where "assigned_user_id = ?", user.id }
  scope :by_project, lambda { |project| where "project_id = ?", project.id }

  scope :backlog, where(:iteration_id => nil)
  scope :complete, where(:complete => true)

  def to_param
    number.to_s
  end

  def self.by_number_and_project(number, project)
    find_by_number_and_project_id!(number, project.id)
  end

  def estimate
    pert_calculator.estimate
  end

  def standard_deviation
    pert_calculator.standard_deviation
  end

  def delete
    update_attributes(:deleted => true, :iteration => nil)
  end

  def add_to_iteration(iteration)
    update_attribute(:iteration, iteration) unless iteration.complete?
  end

  def assigned_user_name
    assigned_user.full_name if assigned_user
  end

  def assigned_user_email
    assigned_user.email if assigned_user
  end

  #TODO - PWP - to remove this dependency we need to remove dependency on super as_json
  def as_json(options={})
    return Artisan::Stories::StoryExporter.new(self).as_json(super(options), options)
  end

  def pert_calculator
    Artisan::Stories::PertCalculator.new(self, project.project_configuration.estimate_mode)
  end
end
