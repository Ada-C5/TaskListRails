class TasksAndPeopleAssociation < ActiveRecord::Migration
  def change
  	 add_column :tasks, :person_id, :integer
  	 remove_column	:people, :task_id
  end
end
