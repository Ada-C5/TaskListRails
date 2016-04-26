class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :priority
      t.string :status
      t.datetime :date_created
      t.datetime :due_date
      t.string :comments
      t.datetime :date_completed

      t.timestamps null: false
    end
  end
end
