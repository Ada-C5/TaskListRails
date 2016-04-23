# This file should contain all the record creation needed to seed the database with its default
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def random_time
  Time.at(rand * Time.now.to_i)
end

list = [
  { title: "The First Task", description: "Get up and dress", completion_status:"almost done", completed_at: random_time },
  { title: "Go to Brunch", description: "With friends",completion_status: "almost done" },
  { title: "Go to Lunch", description: "With Family",completion_status: "almost done", completed_at: random_time },
  { title: "Go to Second Lunch", description: "With friends",completion_status: "almost done" },
  { title: "Play Video Games", description: "with friends",completion_status: "almost done", completed_at: random_time },
  { title: "High Five Somebody You Don't Know", description: " Or not", completion_status: "almost done", completed_at: random_time },
  { title: "Plant Flowers", description: "In neighbors back yard", completed_at: random_time },
  { title: "Call Mom", description: "Or else",completion_status: "almost done" },
  { title: "She worries, you know", description: "Or else",completion_status: "almost done" },
  { title: "Nap", description: "Yesss!",completion_status: "almost done", completed_at: random_time }
]

list.each do |task|
  RailsTaskList.create task
end

Person.create(name: 'Honoure Afflect', description: "" )
Person.create(name: 'William Adolphus', description: "" )
Person.create(name: 'Edith Teisilian Ethelena', description:"" )
