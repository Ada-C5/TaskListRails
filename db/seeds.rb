# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# My Original Seed
#
# Task.all.each do |task|
#   task.destroy
# end
#
# 5.times do
#   i = 1
#   Task.create(title: "New Task #{i}", description: "This is a generic description about the current task.")
#   i += 1
# end

def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { title: "The First Task", description: "", completed_at: random_time },
  { title: "Go to Brunch", description: "", person_id: 1 },
  { title: "Go to Lunch", description: "", completed_at: random_time },
  { title: "Go to Second Lunch", description: "" },
  { title: "Play Video Games", description: "", completed_at: random_time, person_id: 1 },
  { title: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
  { title: "Plant Flowers", description: "", completed_at: random_time },
  { title: "Call Mom", description: "", person_id: 2 },
  { title: "She worries, you know.", description: "" },
  { title: "Nap.", description: "", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Yokes" },
  { name: "Marla" },
  { name: "Apes" }
]

people.each do |person|
  Person.create person
end

puts "There are now #{Task.count} tasks in the DB"
puts "There are now #{Person.count} people in the DB"
