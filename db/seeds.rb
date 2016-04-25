def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 1 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 3 },
  { name: "Go to Second Lunch", description: "", person_id: 4 },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: 2 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: 4 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 2 },
  { name: "Call Mom", description: "", person_id: 3 },
  { name: "She worries, you know.", description: "", person_id: 1 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 4 }
]

tasks.each do |task|
  Task.create task
end

people = [
  {name: "Howard Behr"},
  {name: "Rowan Cota"},
  {name: "Diana Prince"},
  {name: "Carol Danvers"}
]

people.each do |person|
  Person.create person
end
