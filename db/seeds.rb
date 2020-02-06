# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all

4.times do 
	City.create(
		city_name: Faker::Address.city,
		)	
end

20.times do 
	Dog.create(
		dog_name: Faker::FunnyName.name,
		city_id: rand(City.first.id..City.last.id)
		)	
end


10.times do 
	Dogsitter.create(
		name: Faker::Name.name,
		city_id: rand(City.first.id..City.last.id)
		)	
end

20.times do 
	Stroll.create(
		date: Faker::Date.forward(days: 30),
		city_id: rand(City.first.id..City.last.id),
		dog_id: rand(Dog.first.id..Dog.last.id),
		dogsitter_id: rand(Dogsitter.first.id..Dogsitter.last.id)
		)	
end