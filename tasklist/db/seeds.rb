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
  { task_name: "The First Task", task_description: "Zomg tasks", task_completion: random_time },
  { task_name: "Go to Brunch", task_description: "Nom nom nom", task_completion: ""},
  { task_name: "Go to Lunch", task_description: "More noms less eggs", task_completion: random_time },
  { task_name: "Go to Second Lunch", task_description: "We are hobbitses now", task_completion: ""},
  { task_name: "Play Video Games", task_description: "pew pew pew", task_completion: random_time },
  { task_name: "High Five Somebody You Don't Know", task_description: "omg germs", task_completion: random_time },
  { task_name: "Plant Flowers", task_description: "yay pretty flowers", task_completion: random_time },
  { task_name: "Call Mom", task_description: "blah blah blah", task_completion: "" },
  { task_name: "She worries, you know.", task_description: "", task_completion: "" },
  { task_name: "Nap.", task_description: "ZzzzzzzZZ", task_completion: random_time }
]

tasks.each do |task|
  Task.create task
end