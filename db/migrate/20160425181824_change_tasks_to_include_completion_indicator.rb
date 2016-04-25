class ChangeTasksToIncludeCompletionIndicator < ActiveRecord::Migration
  def change
  	add_column :tasks, :completed_bool, :boolean
  end
end
