# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# def random_time
#   Time.at(rand * Time.now.to_i)
# end

people = [
  { name: "Adriana", email: "adriana@cannon.ws" },
  { name: "Chris", email: "chris@cannon.ws" },
  { name: "Jack", email: "jackcannon@puppies.supplies" },
  { name: "Misha", email: "mishapisha@puppies.supplies" }
]

people.each do |person|
  Person.create person
end

tasks = [
  { task: "The First Task", comments: "", person_id: 1 },
  { task: "Go to Brunch", comments: "", person_id: 1 },
  { task: "Go to Lunch", comments: "", person_id: 1 },
  { task: "Go to 2nd Lunch", comments: "", person_id: 1 },
  { task: "Play Games", comments: "", person_id: 1 },
  { task: "High 5 Somebody", comments: "", person_id: 1 },
  { task: "Plant Flowers", comments: "", person_id: 1 },
  { task: "Call Mom", comments: "", person_id: 1 },
  { task: "She worries.", comments: "", person_id: 1 },
  { task: "Nap", comments: "", person_id: 1 }
]

tasks.each do |task|
  Task.create task
end
