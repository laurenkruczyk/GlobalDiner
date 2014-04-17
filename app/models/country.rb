class Country < ActiveRecord::Base
  belongs_to :worldmap
  has_many :meals
  # has_many :users
end
