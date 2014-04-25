class AddCounterToCountry < ActiveRecord::Migration
  def change
    add_column :countries, :meals_count, :integer
  end
end
