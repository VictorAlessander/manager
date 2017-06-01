class Account < ApplicationRecord
  belongs_to :contact

  validates_presence_of :contact
  validates_presence_of :username, :password
end
