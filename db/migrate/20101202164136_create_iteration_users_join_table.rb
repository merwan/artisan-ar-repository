class CreateIterationUsersJoinTable < ActiveRecord::Migration
  def self.up
    create_table :iterations_users, :id => false do |t|
      t.integer :iteration_id
      t.integer :user_id
    end
  end

  def self.down
    drop_table :iterations_users
  end
end
