class ChangeCompletedAtColumnToTimeType < ActiveRecord::Migration
  def change
    change_column(:tasks, :completed_at, :time)
  end
end
