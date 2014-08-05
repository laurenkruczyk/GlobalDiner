class WorldMap < ActiveRecord::Base
  has_many :users
  has_many :countries
end