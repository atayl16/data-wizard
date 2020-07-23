json.extract! ticket, :id, :ticket_id, :location_id, :client_id, :status, :employee_id, :closed_by_employee_id, :closed_at, :deleted, :payment_item_id, :type, :inventory_sku_id, :quantity, :amount_before_discount, :service_id, :appointment_id, :amount, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
