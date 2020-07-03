json.extract! pet, :id, :child_id, :client_id, :deleted, :pet_name, :created_at, :updated_at
json.url pet_url(pet, format: :json)
