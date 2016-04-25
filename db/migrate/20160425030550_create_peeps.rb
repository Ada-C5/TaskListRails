class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      t.string :name
      t.integer :age
      t.string :occupation

      t.timestamps null: false
    end
  end
end
