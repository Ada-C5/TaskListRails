class Task < ActiveRecord::Base

  belongs_to :person

  STATUS = {is_complete: ["uncomplete", "complete"], not_complete: ["complete", "uncomplete"]}

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
