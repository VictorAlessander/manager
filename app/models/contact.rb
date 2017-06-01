class Contact < ApplicationRecord
	has_one :address, :dependent => :destroy
	has_one :account, :dependent => :destroy
	has_one :phone, :dependent => :destroy

	accepts_nested_attributes_for :address, :account, :phone

	def self.search(search)
		if search
			where('name LIKE ?', "%#{search}%")
		else
			all
		end
	end
end