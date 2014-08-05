class Country < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :iso, presence:true, uniqueness: true

  belongs_to :worldmap
  has_many :meals
  
  class << self
    def meal_data
      country_data = {}
      countries = Country.includes(:meals)
      countries.each do |country|
        country_data[country.iso] = {id: country.id, meals: country.meals_count}
      end
      country_data
    end
  end
end
