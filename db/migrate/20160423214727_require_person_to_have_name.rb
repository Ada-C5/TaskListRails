class RequirePersonToHaveName < ActiveRecord::Migration
  def change
    change_column :people, :name, :string, :null => false
  end
end

# change_column :my_table, :my_column, :integer, :default => 0, :null => false
