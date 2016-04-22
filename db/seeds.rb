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
  { name: "The First Task", description: "", completed_at: random_time, person_id: 1 },
  { name: "Go to Brunch", description: "", person_id: 2 },
  { name: "Go to Lunch", description: "", completed_at: random_time, person_id: 2 },
  { name: "Go to Second Lunch", description: "", person_id: 3 },
  { name: "Play Video Games", description: "", completed_at: random_time, person_id: 3 },
  { name: "High Five Somebody You Don't Know", description: "", completed_at: random_time, person_id: 3 },
  { name: "Plant Flowers", description: "", completed_at: random_time, person_id: 3 },
  { name: "Call Mom", description: "", person_id: 3 },
  { name: "She worries, you know.", description: "", person_id: 3 },
  { name: "Nap.", description: "", completed_at: random_time, person_id: 3 }
]

persons = [
  { name: "Anne"},
  { name: "Polly"},
  { name: "Jo"}
]

persons.each do |person|
  Person.create(person)
end

tasks.each do |task|
  person = Person.find(task[:person_id])
  person.tasks << Task.create(task)
end


# CSV.foreach(FILE_PATH, headers: true) do |row|
#   row_hash = row.to_h
#   row_hash.delete("artist")
  
#   # Album.create(row_hash)

#   #create both tables and link them
#   artist = Artist.find_or_create_by(name: artist_name)
#   # .albums comes from has_many relationship
#   artist.albums << Album.create(row_hash)
# end