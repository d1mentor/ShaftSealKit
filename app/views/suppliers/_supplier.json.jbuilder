json.extract! supplier, :id, :name, :location, :vat, :tags, :additional, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
