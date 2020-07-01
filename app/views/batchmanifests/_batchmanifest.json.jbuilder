json.extract! batchmanifest, :id, :filename, :filetype, :created_at, :updated_at
json.url batchmanifest_url(batchmanifest, format: :json)
