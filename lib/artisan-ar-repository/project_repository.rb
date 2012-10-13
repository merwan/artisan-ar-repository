require 'artisan-ar-repository/models/project'
require 'artisan-ar-repository/base_repository'
require 'artisan-ar-repository/models/member'

module ArtisanArRepository
  class ProjectRepository
    include BaseRepository

    def model_class
      ::Project
    end

    def find_by_api_key(id)
      model_class.find_by_api_key(id)
    end

    def find_by_name(id)
      model_class.find_by_name(id)
    end

    def order_by_name(*args)
      model_class.order_by_name(*args)
    end

    def unarchived(*args)
      model_class.unarchived(*args)
    end

    def archived(*args)
      model_class.archived(*args)
    end

    def add_iteration(project, iteration)
      project.iterations << iteration
      return iteration
    end

    def add_member(project, user, owner)
      Artisan::Repository.member.create(:user_id => user.id, :project_id => project.id , :owner => owner)
    end

    def remove_member(project, user)
      membership_for(project, user).destroy
    end

    def is_member?(project, user)
      return !membership_for(project, user).nil?
    end

    def is_owner?(project, user)
      return false if project.nil? || not_a_member_of?(project, user)
      return membership_for(project, user).owner?
    end

    def not_a_member_of?(project, user)
      return membership_for(project, user).nil?
    end

    def membership_for(project, user)
      return project.members.find_by_user_id(user.id)
    end

    def owners(project)
      project.members.find_all_by_owner(true).collect(&:user)
    end

    def create_project_configuration(project)
      project.create_project_configuration
    end

  end
end

