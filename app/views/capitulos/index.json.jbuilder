json.array!(@capitulos) do |capitulo|
  json.extract! capitulo, :id, :nombre, :numero_de_paginas
  json.url capitulo_url(capitulo, format: :json)
end
