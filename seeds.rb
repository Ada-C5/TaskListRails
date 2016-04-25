def random_time
  Time.at(rand * Time.now.to_i)
end

tasks = [
  { name: "The First Task", description: "", completed_at: random_time },
  { name: "Go to Brunch", description: "" },
  { name: "Go to Lunch", description: "", completed_at: random_time },
  { name: "Go to Second Lunch", description: "" },
  { name: "Play Video Games", description: "", completed_at: random_time },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time },
  { name: "Plant Flowers", description: "", completed_at: random_time },
  { name: "Call Mom", description: "" },
  { name: "She worries, you know.", description: "" },
  { name: "Nap.", description: "", completed_at: random_time }
]

tasks.each do |task|
  Task.create task
end


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

people.each { |person| person.create person }