json.extract! contact_person, :id, :name, :email, :phone, :supplier_id, :client_id, :additional, :tags, :created_at, :updated_at
json.url contact_person_url(contact_person, format: :json)
