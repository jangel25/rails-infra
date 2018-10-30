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

ActiveRecord::Schema.define(version: 2018_10_30_032504) do

  create_table "clientes", force: :cascade do |t|
    t.text "rfc"
    t.text "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalleordens", force: :cascade do |t|
    t.text "cantidad"
    t.text "precioventa"
    t.integer "orden_id"
    t.integer "producto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["orden_id"], name: "index_detalleordens_on_orden_id"
    t.index ["producto_id"], name: "index_detalleordens_on_producto_id"
  end

  create_table "ordens", force: :cascade do |t|
    t.text "numero"
    t.text "fecha"
    t.integer "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_ordens_on_cliente_id"
  end

  create_table "productos", force: :cascade do |t|
    t.text "nombre"
    t.text "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
