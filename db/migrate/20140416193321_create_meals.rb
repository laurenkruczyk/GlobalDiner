class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :country_id, null: false
      t.integer :user_id, null: false
      t.string :name, null: false
      t.string :url, null: false
      t.text :description

      t.timestamps
    end
    add_index :meals, :country_id
  end
end
