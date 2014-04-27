class Meal < ActiveRecord::Base

  validates :name, presence: true
  validates :url, presence: true 
  validates :user_id, presence: true
  validates :country_id, presence: true
  # validates_format_of :url, :with => URI::regexp(%w(http https))

  belongs_to :country, counter_cache: true
  belongs_to :user
end

 
def randomizer
  Meal.limit(1).order("RANDOM()")
  # Meal.find(Meal.pluck(:id).sample)
end


