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
  { name: "The First Task", description: "first thing I need to do", completed_at: random_time, status: "no", complete_by: random_time },
  { name: "Go to Brunch", description: "second task" },
  { name: "Go to Lunch", description: "third task", completed_at: random_time, status: "no", complete_by: random_time },
  { name: "Go to Second Lunch", description: "fourth task" },
  { name: "Play Video Games", description: "blah", completed_at: random_time, status: "no", complete_by: random_time },
  { name: "High Five Somebody You Don't Know", description: "high five", completed_at: random_time, status: "no", complete_by: random_time },
  { name: "Plant Flowers", description: "", completed_at: random_time, status: "no", complete_by: random_time },
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_at: random_time, status: "no", complete_by: random_time }
]

tasks.each do |task|
  Task.create task
end
