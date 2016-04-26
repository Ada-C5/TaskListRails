class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.string :description
      t.datetime :added_at
      t.datetime :completed_at
      t.boolean :complete
      t.boolean :removed

      t.timestamps null: false
    end
  end
end
