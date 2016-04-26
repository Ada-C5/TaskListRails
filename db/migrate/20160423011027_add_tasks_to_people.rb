class AddTasksToPeople < ActiveRecord::Migration
  def change
    add_column :person_id, :tasks, :integer
  end
end
