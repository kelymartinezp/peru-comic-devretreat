class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      t.string :Nombre
      t.string :Idioma
      t.string :Editorial
      t.string :Autor
      t.date :Fecha_de_lanzamiento
      t.string :Portada

      t.timestamps
    end
  end
end
