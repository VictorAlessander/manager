json.extract! account, :id, :username, :password, :contact_id, :created_at, :updated_at
json.url account_url(account, format: :json)
