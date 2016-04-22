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

persons = [
  { first_name: "Candy", last_name: "Bar", fav_color: "pink"},
  { first_name: "Cookie", last_name: "Dog", fav_color: "orange"},
  { first_name: "Banana", last_name: "Smasher", fav_color: "yellow"}
]

persons.each do |person|
  Person.create(person)
end


tasks = [
  { title: "The First Task", description: "", completed: random_time, person_id: 1},
  { title: "Go to Brunch", description: "", person_id: 1},
  { title: "Go to Lunch", description: "", completed: random_time, person_id: 1},
  { title: "Go to Second Lunch", description: "", person_id: 2},
  { title: "Play Video Games", description: "", completed: random_time, person_id: 2},
  { title: "High Five Somebody You Don't Know", description: "", completed: random_time, person_id: 2},
  { title: "Plant Flowers", description: "", completed: random_time, person_id: 3},
  { title: "Call Mom", description: "", person_id: 3},
  { title: "She worries, you know.", description: "", person_id: 3},
  { title: "Nap.", description: "", completed: random_time, person_id: 3}
]

tasks.each do |task|
  person = Person.find(task[:person_id])
  person.tasks << Task.create(task)
end


p "Created #{Task.count} tasks"
p "Created #{Person.count} peeps"
