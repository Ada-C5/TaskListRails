class AddColumnPeopleAndTasks < ActiveRecord::Migration
  def change
    add_column :rails_task_lists, :person_id, :interger do |t|
    end
  end
end
