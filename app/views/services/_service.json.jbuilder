json.extract! service, :id, :service_id, :category_id, :name, :description, :duration, :is_add_on, :is_custom, :breed_group_id, :sku, :deleted, :created_at, :updated_at
json.url service_url(service, format: :json)
