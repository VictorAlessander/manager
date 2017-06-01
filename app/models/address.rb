class Address < ApplicationRecord
  belongs_to :contact

  validates_presence_of :contact
  validates_presence_of :street, :cep, :city, :state
end
