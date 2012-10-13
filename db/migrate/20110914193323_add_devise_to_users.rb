class AddDeviseToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime
    add_column :users, :remember_created_at, :datetime

    rename_column :users, :crypted_password, :encrypted_password

    remove_column :users, :persistence_token

    add_index :users, :email,                :unique => true
    add_index :users, :reset_password_token, :unique => true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    # raise ActiveRecord::IrreversibleMigration

    remove_index :users, :email

    add_column :users, :persistence_token, :string

    rename_column :users, :encrypted_password, :crypted_password

    remove_column :users, :remember_created_at
    remove_column :users, :reset_password_sent_at
    remove_column :users, :reset_password_token # will also remove index on this column
  end
end

