class RemoveCompletionColumn < ActiveRecord::Migration
  def change
    remove_column(:tasks, :completion)
  end
end
