class AddSchemaToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :title, :string
    add_column :tasks, :description, :string
    add_column :tasks, :completed_at, :string
  end
end
