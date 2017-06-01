require 'rails_helper'


RSpec.describe Phone, type: :model do

	describe "Association" do
		it {should belong_to(:contact)}
	end

	describe "Validations" do
		it {should validate_presence_of(:contact)}
		it {should validate_presence_of(:phone)}
	end
end