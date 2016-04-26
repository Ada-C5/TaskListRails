class AddColumntoTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :people_id, :integer
  end
end
