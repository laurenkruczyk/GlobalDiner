class WorldMap < ActiveRecord::Base
  has_many :users
  has_many :countries
  # has_many :meals (through: :countries)
end