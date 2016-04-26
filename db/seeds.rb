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
  { name: "The First Task", description: "first thing I need to do", completed_at: random_time, person: "Prince" },
  { name: "Go to Brunch", description: "second task", person: "Prince" },
  { name: "Go to Lunch", description: "third task", completed_at: random_time, person: "MJ" },
  { name: "Go to Second Lunch", description: "fourth task", person: "Prince" },
  { name: "Play Video Games", description: "blah", completed_at: random_time, person: "MJ" },
  { name: "High Five Somebody You Don't Know", description: "high five", completed_at: random_time, person: "Prince" },
  { name: "Plant Flowers", description: "", completed_at: random_time, person: "Prince" },
  { name: "Call Mom", description: "", person: "Prince" },
  { name: "She worries, you know.", description: "", person: "Tupac" },
  { name: "Nap.", description: "", completed_at: random_time, person: "Prince" }
]

tasks.each do |task|

  person_name = task.delete(:person)

  person = Person.find_or_create_by(name: person_name)

  person.tasks << Task.create(task)
end
