json.extract! address, :id, :street, :cep, :city, :state, :contact_id, :created_at, :updated_at
json.url address_url(address, format: :json)
