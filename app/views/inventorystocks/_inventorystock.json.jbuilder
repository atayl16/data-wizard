json.extract! inventorystock, :id, :sku_id, :location_id, :quantity, :price, :cost, :vendor, :expiration_date, :stock_type, :deleted, :created_at, :updated_at
json.url inventorystock_url(inventorystock, format: :json)
