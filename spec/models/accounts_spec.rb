require 'rails_helper'


RSpec.describe Account, type: :model do

	describe "Association" do
		it {should belong_to(:contact)}
	end

	describe "Validations" do
		it {should validate_presence_of(:contact)}
		it {should validate_presence_of(:username)}
		it {should validate_presence_of(:password)}
	end

end