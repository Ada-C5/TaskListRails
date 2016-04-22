class ChangeTasksStatusDefaultNotStarted < ActiveRecord::Migration
  def change
    Task.where(:status => nil).update_all(:status => "Not Started")
    change_column :tasks, :status, :string, :default => "Not Started", :null => false
  end
end

# change_column :my_table, :my_column, :integer, :default => 0, :null => false
