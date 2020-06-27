json.extract! location, :id, :location_id, :nickname, :country, :street_address, :street_address_2, :city, :state, :zip, :phone_number, :deleted, :created_at, :updated_at
json.url location_url(location, format: :json)
