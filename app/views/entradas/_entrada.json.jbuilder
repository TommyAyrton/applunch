json.extract! entrada, :id, :nombre, :descripcion, :imagen, :estado, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)
