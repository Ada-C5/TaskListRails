class RemovePersonIdFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :person_id, :integer
  end
end
