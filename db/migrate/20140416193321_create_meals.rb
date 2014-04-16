class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :country_id, null: false
      t.string :name, null: false
      t.string :url

      t.timestamps
    end
    add_index :meals, :country_id
  end
end
