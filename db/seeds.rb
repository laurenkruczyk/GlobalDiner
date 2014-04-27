require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

countries = Rails.root.join('lib', 'assets', 'countries.csv')
CSV.foreach(countries, headers: true) do |row|
  Country.find_or_create_by(name: row['name'], iso: row['iso'])
end

user = User.where(email: 'lauren.kruczyk@gmail.com').take
meals = [
  {
    name: 'tasty dish',
    url: 'www.tastydish.com',
    description: 'the tastiest dish in the history of mankind',
    country: Country.where(name: 'Australia').take,
    user: user
  },
  {
    name: 'untasty dish',
    url: 'untastydish.com',
    description: 'does not taste good',
    country: Country.where(name: 'Russia').take,
    user: user
  }
]
 
meals.each do |meal|
  Meal.find_or_create_by(meal)
end
