class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :hobby
      t.string :catchphrase

      t.timestamps null: false
    end
  end
end
