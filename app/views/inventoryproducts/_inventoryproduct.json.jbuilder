json.extract! inventoryproduct, :id, :product_id, :name, :brand, :category, :vendor, :description, :visible_to_clients, :commissionable, :discontinued, :discontinued_reasons, :alternative_product_ids, :deleted, :created_at, :updated_at
json.url inventoryproduct_url(inventoryproduct, format: :json)
