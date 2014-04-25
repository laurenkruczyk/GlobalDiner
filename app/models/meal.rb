class Meal < ActiveRecord::Base

  validates :name, presence: true
  validates :url, presence: true #,format: { with:  /\A(http|https):\/\/[A-z0-9]+([\-\.]{1}[A-z0-9]+)*\.[A-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix }, allow_blank: true  
  validates :user_id, presence: true
  validates :country_id, presence: true
  # validates_format_of :url, :with => URI::regexp(%w(http https))

  belongs_to :country, counter_cache: true
  belongs_to :user
end
