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

tasks = [
  { task: "The First Task", description: "", completed: random_time },
  { task: "Go to Brunch", description: "" },
  { task: "Go to Lunch", description: "", completed: random_time },
  { task: "Go to Second Lunch", description: "" },
  { task: "Play Video Games", description: "", completed: random_time },
  { task: "High Five Somebody You Don't Know", description: "", completed: random_time },
  { task: "Plant Flowers", description: "", completed: random_time },
  { task: "Call Mom", description: "" },
  { task: "She worries, you know.", description: "" },
  { task: "Nap.", description: "", completed: random_time }
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Finn"},
  {name: "Jake"},
  {name: "PB"},
  {name: "BMO"}
]

people.each do |person|
  Person.create person
end
