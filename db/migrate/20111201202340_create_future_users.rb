class CreateFutureUsers < ActiveRecord::Migration
  def self.up
    create_table :future_users do |t|
      t.string :email
      t.string :project_name
    end
  end

  def self.down
    drop_table :future_users
  end
end
