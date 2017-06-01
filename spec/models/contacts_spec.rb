require 'rails_helper'
require 'faker'

RSpec.describe Contact, type: :model do
	subject {described_class.new}

	it "is valid with valid attributes" do
		subject.name = Faker::Name.name
		subject.age = Faker::Date.birthday
		subject.email = Faker::Internet.email
		expect(subject).to be_valid
	end

	it "is not valid without a name" do
		expect(subject).to_not be_valid
	end

	it "is not valid without a age" do
		subject.name = "Victor"
		expect(subject).to_not be_valid
	end

	it "is not valid without a email" do
		subject.name = Faker::Name.name
		subject.age = Faker::Date.birthday
		expect(subject).to_not be_valid
	end
end