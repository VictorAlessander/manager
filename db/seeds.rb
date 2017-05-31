# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts("Creating contacts...")
10.times do |x|
	contact = Contact.create(
		name: Faker::Name.name,
		age: Faker::Date.birthday,
		email: Faker::Internet.email
		)
end
puts("Creating contact...[OK]")

puts("Creating accounts...")
Contact.all.each do |person|
	account = Account.create(
		username: Faker::Name.first_name,
		password: Faker::Lorem.word,
		contact: person
		)
end
puts("Creating accounts...[OK]")

puts("Creating addresses...")
Contact.all.each do |person|
	address = Address.create(
		street: Faker::Address.street_name,
		cep: Faker::Address.zip_code,
		city: Faker::Address.city,
		state: Faker::Address.state,
		contact: person
		)
end
puts("Creating addresses...[OK]")

puts("Creating phones...")
Contact.all.each do |person|
	Random.rand(1..2).times do |x|
		phone = Phone.create(
			phone: Faker::PhoneNumber.cell_phone,
			contact: person
			)
	end
end
puts("Creating phones...[OK]")