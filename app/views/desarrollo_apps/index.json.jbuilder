json.array!(@desarrollo_apps) do |desarrollo_app|
  json.extract! desarrollo_app, :id, :nombre, :email_telefono, :descripcion
  json.url desarrollo_app_url(desarrollo_app, format: :json)
end
