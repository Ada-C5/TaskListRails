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
  { task_name: "Wake up in the morning", description: "Feel like P-Diddy", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Grab my glasses", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Go out the door", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Hit this city", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Brush my teet", description: "With a bottle of Jack", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Leave for the night", description: "ain't coming back", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Pedicures", description: "on our toes toes", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Try on all our clothes", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Drop top", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Play favorite CD", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Roll up to the party", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "get a little bit tipsy", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Don't stop", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Make it pop", description: "", status: "", due_date: "", completed_on: "", peep_id: ""},
  { task_name: "Tik Tok", description: "Important.", status: "", due_date: "", completed_on: "", peep_id: ""}
  ]

tasks.each do |task|
  Task.create task
end

people = [
  { name: "Jillian", age: 31, occupation: "Awesome Person" },
  { name: "Jake", age: 32, occupation: "Radical Person" },
  { name: "Indiana", age: 5, occupation: "Super Dog-Person" },
  { name: "Cream Cheese", age: 4, occupation: "Excellent Dog-Person" },
]

people.each do |person|
  Peep.create person
end
