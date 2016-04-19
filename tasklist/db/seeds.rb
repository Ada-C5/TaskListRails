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
  { task: "The First Task", comments: "", date_completed: random_time },
  { task: "Go to Brunch", comments: "" },
  { task: "Go to Lunch", comments: "", date_completed: random_time },
  { task: "Go to Second Lunch", comments: "" },
  { task: "Play Video Games", comments: "", date_completed: random_time },
  { task: "High Five Somebody You Don't Know", comments: "", date_completed: random_time },
  { task: "Plant Flowers", comments: "", date_completed: random_time },
  { task: "Call Mom", comments: "" },
  { task: "She worries, you know.", comments: "" },
  { task: "Nap.", comments: "", date_completed: random_time }
]

tasks.each do |task|
  Task.create task
end
