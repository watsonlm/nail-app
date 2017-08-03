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

20.times do
	polish = Polish.create(
		name: "#{Faker::Book.genre} #{Faker::Dessert.flavor} #{Faker::Dessert.variety}",
		brand: "Sugar Nail Polish",
		)
end

20.times do
	polish = Polish.create(
		name: "#{Faker::Lovecraft.word.capitalize} #{Faker::Color.color_name.capitalize}",
		brand: "Weird Nails",
		)
end

20.times do
	polish = Polish.create(
		name: "#{Faker::Cat.name} #{Faker::Space.star}",
		brand: "Cosmic Lacquers",
		)
end

Polish.all.each do |polish|
	hex = Faker::Color.hex_color
	color = ColorNamer.name_from_html_hash(hex)
	polish.update(hex: hex, color: color[2])
end

10.times do
	user = User.create(
		email: Faker::Internet.email,
		name: Faker::Internet.user_name,
		password: "password",
		 )
end

users = User.all.pluck(:id)
polishes = Polish.all.pluck(:id)
30.times do
	user_polish = UserPolish.create(
		user_id: users.sample,
		polish_id: polishes.sample,
		)
end
