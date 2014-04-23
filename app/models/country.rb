class Country < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true
  validates :iso, presence:true, uniqueness: true

  belongs_to :worldmap
  has_many :meals
  # has_many :users
end
