class ChangeTaskNameAndPersonIdToNotAcceptNull < ActiveRecord::Migration
  def change
    change_column_null :tasks, :name, false
    change_column_null :tasks, :person_id, false
  end
end
