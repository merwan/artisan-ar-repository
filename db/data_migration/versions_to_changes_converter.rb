module DataMigration
  module VersionsToChangesConverter

    def self.get_project_id(version)
      version.project_id
    end

    def self.get_source_id(version)
      version.item_id
    end

    def self.get_event(version)
      version.event
    end

    def self.get_created_at(version)
      version.created_at
    end

    def self.get_original_fields(version)
      version.object
    end

    def self.get_changed_fields(versions, index)
      versions[index].object if versions[index]
    end
  end
end

