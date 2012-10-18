require 'artisan/repository'

class User < ActiveRecord::Base
  # Setup accessible (or protected) attributes for your model
  attr_accessible :login, :project_id, :full_name, :email, :password, :password_confirmation, :remember_me

  has_many :days
  has_many :iterations, :through => :days
  has_many :stories

  has_many :projects, :through => :members
  has_many :members

  validates :full_name, :presence => true
  validates_length_of :login, :minimum => 3
  validates_format_of :login, :with => /\A\w[\w\.+\-_@ ]+$/, :message => "should use only letters, numbers, spaces, and .-_@ please."
  validates_uniqueness_of :login, :case_sensitive => false

  after_create :join_team

  private

  def join_team
    future_user_repository = Artisan::Repository.future_user
    future_user = future_user_repository.find_by_email(self.email)
    if future_user
      project = Artisan::Repository.project.find(future_user.project_id)
      team = Artisan::Teams::Team.new(project, self)
      team.add_team_member(self)
      future_user_repository.delete(future_user.id)
    end
  end
end
