

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def random_time
  DateTime.strptime('%d-%m-%Y %I:%M:%S %p')
end

persons = [
  {name: "risha"},
  {name: "andre"},
  {name: "jordan"}
]

persons.each do |person|
  Person.create person
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, completion_status: "done", person_id: 1 },
  { name: "Go to Brunch", description: "", completion_status: "done", person_id: 2},
  { name: "Go to Lunch", description: "", completed_at: random_time, completion_status: "done", person_id: 2},
  { name: "Go to Second Lunch", description: "", completion_status: "done", person_id: 2},
  { name: "Play Video Games", description: "", completed_at: random_time, completion_status: "done", person_id: 2 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, completion_status: "done", person_id: 2 },
  { name: "Plant Flowers", description: "", completed_at: random_time, completion_status: "done", person_id: 2 },
  { name: "Call Mom", description: "", completion_status: "done", person_id: 3 },
  { name: "She worries, you know.", description: "", completion_status: "done", person_id: 3 },
  { name: "Nap.", description: "", completed_at: random_time, completion_status: "done", person_id: 3 }
]

tasks.each do |task|
  Task.create task
end
