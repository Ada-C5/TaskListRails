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
  { title: "The First Task", description: "", completed_at: random_time },
  { title: "Go to Brunch", description: "" },
  { title: "Go to Lunch", description: "", completed_at: random_time },
  { title: "Go to Second Lunch", description: "" },
  { title: "Play Video Games", description: "", completed_at: random_time },
  { title: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
  { title: "Plant Flowers", description: "", completed_at: random_time },
  { title: "Call Mom", description: "" },
  { title: "She worries, you know.", description: "" },
  { title: "Nap.", description: "", completed_at: random_time }
]

people = [{name: "Sarah"}, {name: "Gil"}, {name: "Nemesh"}]


people.each do |person| # associate each person with their own tasks (happens to be all the tasks)
  new_person = Person.find_or_create_by(person)

  tasks.each do |task|
    new_task = Task.create task
    new_person.tasks << new_task
  end
end
