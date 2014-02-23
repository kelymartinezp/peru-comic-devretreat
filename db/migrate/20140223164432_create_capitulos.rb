class CreateCapitulos < ActiveRecord::Migration
  def change
    create_table :capitulos do |t|
      t.string :nombre
      t.integer :numero_de_paginas

      t.timestamps
    end
  end
end
