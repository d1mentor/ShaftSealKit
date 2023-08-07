json.extract! offer, :id, :incoming, :type, :status, :supplier_id, :client_id, :bid_id, :files, :tags, :additional, :created_at, :updated_at
json.url offer_url(offer, format: :json)
