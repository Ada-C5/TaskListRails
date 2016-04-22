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
  { task_name: "Wake up in the morning", description: "Feel like P-Diddy.", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Grab my glasses", description: "", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Out the door", description: "", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Hit the city", description: "", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Brush teeth", description: "With a bottle of Jack.", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Leave for the night", description: "Ain't coming back.", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Pedicure", description: "On our toes toes.", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Try on", description: "All our clothes clothes.", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Drop top", description: "Playin our favorite CDs.", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Pull up to the party", description: "Tryna get a little bit tipsy.", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Don't stop", description: "", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Make it pop", description: "", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Blow my speakers up", description: "", status: "", due_date: random_time, completed_on: "" },
  { task_name: "Fight", description: "Tonight 'til we see the sunlight.'", status: "", due_date: random_time, completed_on: ""  },
  { task_name: "Tik Tok", description: "", status: "", due_date: random_time, completed_on: ""  }
]

tasks.each do |task|
  Task.create task
end
