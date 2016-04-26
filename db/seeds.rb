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

Person.create(name: 'Lisa', age: 15, catchphrase: "Meet me at mile 18.")
Person.create(name: "Claire", age: 20, catchphrase: "You don't even know me.")
Person.create(name: "Ryan", age: 1, catchphrase: "Ryan got dem legos.")
Person.create(name: "Baker", age: 56, catchphrase: "Arf")
Person.create(name: "Deirdre", age: 94, catchphrase: "What the damn hell.")
