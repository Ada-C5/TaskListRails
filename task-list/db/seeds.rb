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

tasks.each do |task|
  Task.create task
end
