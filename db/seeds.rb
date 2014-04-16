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

