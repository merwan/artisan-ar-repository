class ChangePertValuesToInteger < ActiveRecord::Migration
  def self.up
    change_column :stories, :optimistic,  :integer
    change_column :stories, :pessimistic, :integer
    change_column :stories, :realistic,   :integer
    change_column :stories, :estimate,    :integer
  end

  def self.down
    change_column :stories, :optimistic,  :decimal, :precision => 5, :scale => 1
    change_column :stories, :pessimistic, :decimal, :precision => 5, :scale => 1
    change_column :stories, :realistic,   :decimal, :precision => 5, :scale => 1
    change_column :stories, :estimate,    :decimal, :precision => 5, :scale => 1
  end
end
