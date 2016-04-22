class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_name, null: false
      t.string :description
      t.string :status
      t.string :due_date #use chronic????? or t.datetime
      t.string :completed_on #use chronic???? t.datetime

      t.timestamps "created_at", null: false
      t.timestamps "updated_at", null: false
    end
  end
end
