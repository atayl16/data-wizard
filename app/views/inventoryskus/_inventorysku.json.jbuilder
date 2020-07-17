json.extract! inventorysku, :id, :sku_id, :product_id, :name, :number, :barcode, :target_quantity, :alert_threshold, :deleted, :created_at, :updated_at
json.url inventorysku_url(inventorysku, format: :json)
