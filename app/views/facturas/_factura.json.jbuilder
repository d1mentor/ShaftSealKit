json.extract! factura, :id, :facturownia_id, :additional, :tags, :status, :bid_id, :offer_id, :files, :sum, :sum_currency, :created_at, :updated_at
json.url factura_url(factura, format: :json)
