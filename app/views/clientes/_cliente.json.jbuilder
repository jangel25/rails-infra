json.extract! cliente, :id, :rfc, :nombre, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
