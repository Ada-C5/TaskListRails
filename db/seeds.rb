people = [
  { name: "Anna" },
  { name: "Bryan" },
  { name: "Mitch" }
]

people.each do |person|
  Person.create person
end
