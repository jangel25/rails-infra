json.extract! detalleorden, :id, :cantidad, :precioventa, :orden_id, :producto_id, :created_at, :updated_at
json.url detalleorden_url(detalleorden, format: :json)
