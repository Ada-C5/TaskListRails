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

# tasks = [
#   { task_name: "The First Task", task_description: "Zomg tasks", task_completion: random_time },
#   { task_name: "Go to Brunch", task_description: "Nom nom nom", task_completion: ""},
#   { task_name: "Go to Lunch", task_description: "More noms less eggs", task_completion: random_time },
#   { task_name: "Go to Second Lunch", task_description: "We are hobbitses now", task_completion: ""},
#   { task_name: "Play Video Games", task_description: "pew pew pew", task_completion: random_time },
#   { task_name: "High Five Somebody You Don't Know", task_description: "omg germs", task_completion: random_time },
#   { task_name: "Plant Flowers", task_description: "yay pretty flowers", task_completion: random_time },
#   { task_name: "Call Mom", task_description: "blah blah blah", task_completion: "" },
#   { task_name: "She worries, you know.", task_description: "", task_completion: "" },
#   { task_name: "Nap.", task_description: "ZzzzzzzZZ", task_completion: random_time }
# ]

# tasks.each do |task|
#   Task.create task
# end

people = [
  { name: "Adriana Cannon", hobby: "3D printing", catchphrase: "HEEEEEEEEEEEEEEEEEEEEEEEEEERE'S JOHNNY!" },
  { name: "Alysia Brown", hobby: "Amateur radio", catchphrase: "And that's the way it is." },
  { name: "Ania Gonzalez Ramirez", hobby: "Coloring", catchphrase: "This tape will self-destruct in five seconds." },
  { name: "Anna Wilson", hobby: "Crossword Puzzles", catchphrase: "Book'em, Dan-O." },
  { name: "Cristal Tay", hobby: "Do it yourself", catchphrase: "Sock It To Me!" },
  { name: "Deirdre Storck", hobby: "Flower Aranging", catchphrase: "Come on down!" },
  { name: "Jade Vance", hobby: "Kombucha Brewing", catchphrase: "Aaaaaaaaay!" },
  { name: "Jessica Weeber", hobby: "Magic", catchphrase: "Good Morning, Angels." },
  { name: "Jillian Boshart", hobby: "Sudoku", catchphrase: "I love it when a plan comes together." },
  { name: "Justine Winnie", hobby: "Whittling", catchphrase: "Don't be ridiculous." },
  { name: "Leah Petersen", hobby: "Yo-yoing", catchphrase: "You got it, Dude!" },
  { name: "Lisa Rolczynski", hobby: "BASE jumping", catchphrase: "Make it so." },
  { name: "Melissa Jimison", hobby: "Dowsing", catchphrase: "Oh, boy." },
  { name: "Mindy Carson", hobby: "Fishing", catchphrase: "D'oh!" },
  { name: "Nadine Curry", hobby: "Graffiti", catchphrase: "More Power!" },
  { name: "Nicole Iwasaki", hobby: "Inline skating", catchphrase: "How you doin'?" },
  { name: "Risha Allen", hobby: "Kite flying", catchphrase: "OH MY GOD! THEY KILLED KENNY! YOU BASTARDS!" },
  { name: "Rowan Cota", hobby: "Photography", catchphrase: "More cowbell" },
  { name: "Sarah Kane", hobby: "Topiary", catchphrase: "The Tribe has spoken." },
  { name: "Sarah Nahmias", hobby: "Skydiving", catchphrase: "Grab your gear!" },
  { name: "Sophia Baldonado", hobby: "Vehicle restoration", catchphrase: "You're Fired." },
  { name: "Suzanne Harrison", hobby: "Urban exploration", catchphrase: "Bazinga!" },
  { name: "Valerie Conklin", hobby: "Slacklining", catchphrase: "I know what we're gonna do today!" },
  { name: "Yordanos Dirar", hobby: "Billiards", catchphrase: "I'll be back" }
]

people.each do |people| 
  Person.create(people)
end


