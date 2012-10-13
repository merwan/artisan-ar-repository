require 'active_record'
require 'artisan-ar-repository/models/story'
require 'artisan-ar-repository/models/day'
require 'artisan/stories/story_collection'

class Iteration < ActiveRecord::Base
  belongs_to :project
  has_many :stories
  has_many :days
  has_many :users, :through => :days
  accepts_nested_attributes_for :days

  default_scope :order => "number DESC"

  scope :by_finish_date, order("finish_date DESC")

  def total_billed_points
    Artisan::Stories::StoryCollection.new(stories).billed_points
  end
end
