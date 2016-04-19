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
  { name: "The First Task", description: "do this one first", completed: random_time },
  { name: "Go to Brunch", description: "food is yummy" },
  { name: "Go to Lunch", description: "eat more", completed: random_time },
  { name: "Go to Second Lunch", description: "so full" },
  { name: "Play Video Games", description: "what does this button do?", completed: random_time },
  { name: "High Five Somebody You Don't Know", description: "good work", completed: random_time },
  { name: "Plant Flowers", description: "learn to plant flowers", completed: random_time },
  { name: "Call Mom", description: "tonight" },
  { name: "She worries, you know.", description: "nah" },
  { name: "Nap.", description: "zzzzz", completed: random_time }
]

tasks.each do |task|
  Task.create task
end
