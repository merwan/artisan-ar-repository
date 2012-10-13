class AddItemNumberToVersions < ActiveRecord::Migration
  def self.up
    add_column :versions, :item_number, :integer

    # shouldn't mix data migrations with schema migrations.
    # else it fails like this one does

    # Version.find(:all).each do |version|
    #   version.item_number = version.item_display_name.to_i
    #   version.save
    # end
  end

  def self.down
    remove_column :versions, :item_number
  end
end
