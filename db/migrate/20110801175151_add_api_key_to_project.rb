class AddApiKeyToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :api_key, :string

    Project.find(:all).each do |project|
      if project.api_key.nil?
        project.api_key = Digest::SHA1.hexdigest(project.id.to_s + project.name.to_s + 1337.to_s)[1..12]
        project.save
      end
    end
  end

  def self.down
    remove_column :projects, :api_key
  end
end
