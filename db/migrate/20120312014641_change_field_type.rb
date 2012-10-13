class ChangeFieldType < ActiveRecord::Migration
  def self.up
    change_column :changes, :original_fields, :text
    change_column :changes, :changed_fields, :text
  end

  def self.down
    change_column :changes, :original_fields, :string
    change_column :changes, :changed_fields, :string
  end
end
