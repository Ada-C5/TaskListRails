class Task < ActiveRecord::Base

  STATUS = {is_complete: ["uncomplete", "completed"], not_complete: ["completed", "uncompleted"]}

  def self.all_tasks
    Task.all
  end

  def self.find_task(id)
    [Task.find(id)]
  end

  def status
     self.completed_at != nil ? STATUS[:is_complete] : STATUS[:not_complete]
  end
end
