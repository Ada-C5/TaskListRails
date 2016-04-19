class RenameTitleToName < ActiveRecord::Migration
  def change
  	rename_column :tasks, :title, :name
  end
end
