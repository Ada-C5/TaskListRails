class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task
      t.string :description
      t.string :completed
      t.string :priority
      t.string :string

      t.timestamps null: false
    end
  end
end
