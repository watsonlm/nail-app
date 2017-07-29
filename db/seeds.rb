# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Polish.destroy_all
User.destroy_all
UserPolish.destroy_all

100.times do
	polish = Polish.create(
		name: "#{Faker::Dessert.flavor} #{Faker::Dessert.variety}",
		color: Faker::Color.hex_color,
		brand: "Sugar Polish",
		)
end

100.times do
	polish = Polish.create(
		name: "#{Faker::Lovecraft.word.capitalize} #{Faker::Color.color_name.capitalize}",
		color: Faker::Color.hex_color,
		brand: "Weird Nails",
		)
end

100.times do
	polish = Polish.create(
		name: "#{Faker::Cat.name} #{Faker::Space.star}",
		color: Faker::Color.hex_color,
		brand: "Cosmic Lacquers",
		)
end

10.times do
	user = User.create(
		email: Faker::Internet.email,
		name: Faker::Internet.user_name,
		password: "password",
		 )
end

200.times do
	user_polish = UserPolish.create(
		userid: rand(1..10),
		polishid: rand(1..300),
		)
end
