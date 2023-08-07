json.extract! client, :id, :name, :location, :vat, :tags, :additional, :created_at, :updated_at
json.url client_url(client, format: :json)
