class FutureUser < ActiveRecord::Base
  validates_uniqueness_of :email, :message => "This email has already been taken"
  belongs_to :project
end
