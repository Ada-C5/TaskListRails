# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
  { name: "Mindy" },
  { name: "Ashley" },
  { name: "Erin" }
]

people.each do |person|
  Person.create person
end

tasks = [
  { title: "The First Task", description: "", added_at: random_time, completed_at: random_time, person_id: 1},
  { title: "Go to Brunch", description: "",  person_id: 1 },
  { title: "Go to Lunch", description: "", added_at: random_time, completed_at: random_time, person_id: 2 },
  { title: "Go to Second Lunch", description: "", person_id: 3},
  { title: "Play Video Games", description: "", added_at: random_time, completed_at: random_time,  person_id: 1 },
  { title: "High Five Somebody You Don't Know", description: "", added_at: random_time, completed_at: random_time, person_id: 2 },
  { title: "Plant Flowers", description: "", added_at: random_time, completed_at: random_time },
  { title: "Call Mom", description: "" },
  { title: "She worries, you know.", description: "" },
  { title: "Nap.", description: "", added_at: random_time, completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end
