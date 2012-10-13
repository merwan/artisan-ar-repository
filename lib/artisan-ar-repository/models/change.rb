require 'artisan/repository'

class Change < ActiveRecord::Base
  default_scope :order => "created_at DESC"
end
