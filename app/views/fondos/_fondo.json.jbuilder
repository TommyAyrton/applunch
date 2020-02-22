json.extract! fondo, :id, :nombre, :descripcion, :imagen, :estado, :created_at, :updated_at
json.url fondo_url(fondo, format: :json)
