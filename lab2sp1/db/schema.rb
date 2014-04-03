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

ActiveRecord::Schema.define(version: 20140403042405) do

  create_table "groups", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matches", force: true do |t|
    t.date     "fecha"
    t.integer  "fase"
    t.integer  "estado"
    t.integer  "id_team"
    t.integer  "marcador"
    t.string   "ganador"
    t.string   "perdedor"
    t.boolean  "empate?"
    t.integer  "id_group"
    t.integer  "id_stadium"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stadia", force: true do |t|
    t.string   "nombre"
    t.string   "ciudad"
    t.date     "fecha_construccion"
    t.integer  "capacidad"
    t.string   "foto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "nombre"
    t.string   "nombre_entrenador"
    t.string   "bandera"
    t.string   "uniforme"
    t.string   "texto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end