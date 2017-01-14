json.extract! seguridad_usuario, :id, :username, :nombres, :apellidos, :created_at, :updated_at
json.url seguridad_usuario_url(seguridad_usuario, format: :json)