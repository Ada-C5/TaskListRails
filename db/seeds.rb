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
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""},
  { task_name: "", description: "", status: "", due_date: "", completed_at: random_time, peep_id: ""}
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
