json.extract! pedido, :id, :entrada_id, :fondo_id, :bebida_id, :empleado_id, :mesa_id, :estado, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
