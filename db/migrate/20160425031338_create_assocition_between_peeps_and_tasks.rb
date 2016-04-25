class CreateAssocitionBetweenPeepsAndTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :peep_id, :string
  end
end
