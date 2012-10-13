require File.expand_path('../../../config/environment.rb', __FILE__)

module IterationNumberBackfillDataMigration
  def self.run
    Project.find_each do |project|
      i = 0

      iterations = Iteration.where(:project_id => project.id).order('finish_date DESC').all
      iterations.each do |iteration|
        iteration.update_attribute(:number, iterations.size - i)
        i += 1
      end
    end
  end
end

if $0 == __FILE__ then
  IterationNumberBackfillDataMigration.run
end
