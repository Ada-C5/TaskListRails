class ChangeTaskId < ActiveRecord::Migration
  def change
  	remove_column :people, :task_id, :integer
  end
end
