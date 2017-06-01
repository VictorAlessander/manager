require 'rails_helper'


RSpec.describe Address, type: :model do

	describe "Association" do
		it {should belong_to(:contact)}
	end

	describe "Validations" do
		it {should validate_presence_of(:contact)}
		it {should validate_presence_of(:street)}
		it {should validate_presence_of(:cep)}
		it {should validate_presence_of(:city)}
		it {should validate_presence_of(:state)}
	end
end