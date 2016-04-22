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
  { title: "The First Task", description: "", completed_at: random_time, person_id: 1 },
  { title: "Go to Brunch", description: "", person_id: 2 },
  { title: "Go to Lunch", description: "", completed_at: random_time, person_id: 3 },
  { title: "Go to Second Lunch", description: "yum", person_id: 3 },
  { title: "Play Video Games", description: "all day, all day, all DAY", completed_at: random_time, person_id: 4 },
  { title: "High Five Somebody You Don't Know", description: "but not on the bus", completed_at: random_time, person_id: 1 },
  { title: "Plant Flowers", description: "all over the neighbor's yard", completed_at: random_time },
  { title: "Call Mom", description: "", person_id: 2 },
  { title: "She worries, you know.", description: "" },
  { title: "Nap.", description: "", completed_at: random_time }
]

people = [
  { name: "Lisa" },
  { name: "Chris" },
  { name: "Renji" },
  { name: "Jas" }
]

tasks.each do |task|
  Task.create task
end

people.each do |person|
  Person.create person
end