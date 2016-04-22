class Task < ActiveRecord::Base

  belongs_to :person

  STATUS = {is_complete: ["uncomplete"], not_complete: ["complete"]}

  def self.all_tasks
    Task.all
  end

  def status
     self.completed_at != nil ? STATUS[:is_complete] : STATUS[:not_complete]
  end

  def self.uncompleted_tasks
    Task.where(completed_at: nil)
  end

  def self.completed_tasks
    Task.where.not(completed_at: nil)
  end

end
