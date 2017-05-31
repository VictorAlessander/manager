class Contact < ApplicationRecord
	has_one :address, :dependent => :destroy
	has_one :account, :dependent => :destroy
	has_one :phone, :dependent => :destroy

	accepts_nested_attributes_for :address, :account, :phone
end