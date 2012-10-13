require 'artisan-ar-repository/models/project_configuration'

class Project < ActiveRecord::Base

  has_many :stories, :dependent => :destroy
  has_many :iterations, :dependent => :destroy
  has_many :members
  has_many :users, :through => :members, :order => :login

  has_many :pages


  has_one :project_configuration, :dependent => :destroy
  accepts_nested_attributes_for :project_configuration

  scope :unarchived, where('archived = ? OR archived is NULL', false).order("name ASC")
  scope :archived, where(:archived => true).order("name ASC")
  scope :order_by_name, order("name ASC")
  scope :by_date, order("updated_at DESC")
end
