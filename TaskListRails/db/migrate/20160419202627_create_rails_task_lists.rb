class CreateRailsTaskLists < ActiveRecord::Migration
  def change
    create_table :rails_task_lists do |t|
      t.string :title
      t.string :description
      t.string :completion_status
      t.string :completed_at

      t.timestamps null: false
    end
  end
end
