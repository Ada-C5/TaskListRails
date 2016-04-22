class Person < ActiveRecord::Base
  has_many :tasks

  def uncompleted_tasks
    self.tasks.where(completed_at: nil).count
  end
end
