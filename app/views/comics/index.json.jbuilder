json.array!(@comics) do |comic|
  json.extract! comic, :id, :Nombre, :Idioma, :Editorial, :Autor, :Fecha_de_lanzamiento, :Portada
  json.url comic_url(comic, format: :json)
end
