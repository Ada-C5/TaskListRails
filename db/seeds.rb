# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Task.create!([
  { title: "Get passport", description: "Get at post office; bring id" },
  { title: "Make itinerary", description: "Get ideas from Lonely Planet book" },
  { title: "Book rental car", description: "Diesel, no AC is cheaper" },
  { title: "Book hotels", description: "Booking.com so all are together, 2 nights each place" },
  { title: "Get travel insurance", description: "World Nomads" },
])

