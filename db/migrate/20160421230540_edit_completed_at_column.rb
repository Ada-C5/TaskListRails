class EditCompletedAtColumn < ActiveRecord::Migration
  def change
    add_column :tasks, :completed, :string
    remove_column :tasks, :completed_at, :string
  end
end
