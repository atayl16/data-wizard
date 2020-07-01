json.extract! salonpricing, :id, :service_id, :location_id, :employee_id, :price, :deleted, :created_at, :updated_at
json.url salonpricing_url(salonpricing, format: :json)
