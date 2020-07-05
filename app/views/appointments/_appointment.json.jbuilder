json.extract! appointment, :id, :appointment_id, :location_id, :employee_id, :client_id, :child_id, :notes, :start_time, :end_time, :service_id, :price, :duration, :status, :change_time, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
