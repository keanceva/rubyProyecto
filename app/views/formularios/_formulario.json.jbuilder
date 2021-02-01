json.extract! formulario, :id, :nombre, :telefono, :mascota, :sexo, :descripcion, :fecha, :created_at, :updated_at
json.url formulario_url(formulario, format: :json)
