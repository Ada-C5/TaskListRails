class CreateAssociationBetweenPersonAndTask < ActiveRecord::Migration
  def change
    add_column :tasks, :person_id, :integer
    remove_column :tasks, :date_created, :datetime
    change_column :tasks, :task, :string, :null => false
  end
end
