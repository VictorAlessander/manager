json.extract! contact, :id, :name, :age, :email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
