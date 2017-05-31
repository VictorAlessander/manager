class Contact < ApplicationRecord
	has_one :address
	has_one :account
	has_one :phone

	accepts_nested_attributes_for :address, :account, :phone
end
