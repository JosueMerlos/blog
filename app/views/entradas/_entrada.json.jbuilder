json.extract! entrada, :id, :fecha, :titulo, :texto, :visitas, :publicado, :seguridad_usuario_id, :created_at, :updated_at
json.url entrada_url(entrada, format: :json)