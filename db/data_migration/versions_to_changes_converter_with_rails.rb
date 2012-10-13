module DataMigration
  module VersionsToChangesConverterWithRails

    def self.get_versions
      version_item_ids = Version.all.map(&:item_id).uniq

      versions = []
      version_item_ids.each do |item_id|
        versions << Version.find_all_by_item_id(item_id)
      end

      return versions
    end

    def self.get_user_id(version)
      if user_id?(version.whodunnit)
        user = User.find_by_id(version.whodunnit.to_i)
      else
        user = User.find_by_full_name(version.whodunnit)
      end

      user.id if user
    end

    def self.get_type(version)
      if version.item_type == "Story"
        return StoryChange
      elsif version.item_type == "Iteration"
        return IterationChange
      end
    end

    def self.user_id?(whodunnit)
      whodunnit.to_i != 0
    end

  end
end

