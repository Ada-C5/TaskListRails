class AddDetailsToPerson < ActiveRecord::Migration
  def change
    add_column :people, :age, :integer
    add_column :people, :catchphrase, :string
  end
end
