class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :completed_on
      t.timestamps null: false
    end
  end
end
