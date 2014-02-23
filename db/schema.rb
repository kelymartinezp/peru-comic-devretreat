# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140223164432) do

  create_table "capitulos", force: true do |t|
    t.string   "nombre"
    t.integer  "numero_de_paginas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comics", force: true do |t|
    t.string   "Nombre"
    t.string   "Idioma"
    t.string   "Editorial"
    t.string   "Autor"
    t.date     "Fecha_de_lanzamiento"
    t.string   "Portada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
