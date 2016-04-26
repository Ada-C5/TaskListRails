def random_time
  Time.at(rand * Time.now.to_i)
end

people = [
  {name: "Jack", email: "something@google.com"},
  {name: "Pandora", email: "pandora@mybox.com"},
  {name: "Marley", email: "bob@rasta.com"},
  {name: "Rosa", email: "chihuahua@kickassdogs.com"}
]

people.each do |person|
  Person.create person
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, person_id: 2 },
  { name: "Go to Brunch", description: "", person_id: 4 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 4 },
  { name: "Go to Second Lunch", description: "", person_id: 3 },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: 1 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: 1 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 1 },
  { name: "Call Mom", description: "", person_id: 1 },
  { name: "She worries, you know.", description: "", person_id: 2 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 3}
]

tasks.each do |task|
  Task.create task
end

# require 'csv'
# FILE_PATH = 'db/seed_data/task-collection.csv'

# CSV.foreach(FILE_PATH, headers: true) do |row|
#   row_hash = row.to_h
#   person_name = row_hash.delete("person")

#   person = Person.find_or_create_by(name: person_name)
#   person.task <<Task.create(row_hash)
# end






