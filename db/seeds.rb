	# This file should contain all the record creation needed to seed the database with its default values.
	# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
	#
	# Examples:
	#
	#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
	#   Mayor.create(name: 'Emanuel', city: cities.first)

	first_tasks = [
	  { title: "Get passport", description: "Get at post office; bring id" },
	  { title: "Make itinerary", description: "Get ideas from Lonely Planet book" },
	  { title: "Book rental car", description: "Diesel, no AC is cheaper" }
	]

	second_tasks = [
	  { title: "Create a budget", description: "Start saving now!" },
	  { title: "Research pet sitters", description: "Someone who 💜 kitties" },
	  { title: "Buy plane tickets", description: "4 seats" }
]

	third_tasks = [	  
		{ title: "Book hotels", description: "Booking.com so all are together, 2 nights each place" },
	  { title: "Get travel insurance", description: "World Nomads" }
]

	first_person = {name: 'Jess'}
	second_person = {name: 'Phil'}
	third_person = {name: 'Cora'}

first_tasks.each do |task|
	new_task = Task.create(task)
	new_person = Person.find_or_create_by(first_person)
	new_person.tasks << new_task
end

second_tasks.each do |task|
	new_task = Task.create(task)
	new_person = Person.find_or_create_by(second_person)
	new_person.tasks << new_task
end

third_tasks.each do |task|
	new_task = Task.create(task)
	new_person = Person.find_or_create_by(third_person)
	new_person.tasks << new_task
end

	# create_tasks.each do |task|
	# 	people.each do |person|
	# 		new_task = Task.create!(task)
	# 		new_person = Person.find_or_create_by(person)
	# 		new_person.tasks << new_task
	# 	end
	# end







