class Meal < ActiveRecord::Base

  validates :name, presence: true
  validates :url, presence: true
  validates :user_id, presence: true
  validates :country_id, presence: true

  belongs_to :country, counter_cache: true
  belongs_to :user
end
