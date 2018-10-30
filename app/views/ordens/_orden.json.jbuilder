json.extract! orden, :id, :numero, :fecha, :cliente_id, :created_at, :updated_at
json.url orden_url(orden, format: :json)
