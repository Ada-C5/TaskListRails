class RemoveStringFromPerson < ActiveRecord::Migration
  def change
    remove_column :people, :string
  end
end
