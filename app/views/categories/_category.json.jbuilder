json.extract! category, :id, :name, :category_id, :description, :tags, :manufacturer, :created_at, :updated_at
json.url category_url(category, format: :json)
