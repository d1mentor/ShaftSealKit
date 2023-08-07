json.extract! product, :id, :kit_id, :spare_part_id, :price, :price_currency, :additional, :tags, :created_at, :updated_at
json.url product_url(product, format: :json)
