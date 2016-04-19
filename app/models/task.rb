class Task < ActiveRecord::Base
  def self.all_tasks
    Task.all
  end

  def self.find_task(id)
    [Task.find(id)]
  end
end
