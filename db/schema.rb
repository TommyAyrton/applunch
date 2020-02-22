# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_21_220436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bebidas", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "imagen"
    t.integer "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "cargo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entradas", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "imagen"
    t.integer "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fondos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "imagen"
    t.integer "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mesas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "entrada_id", null: false
    t.bigint "fondo_id", null: false
    t.bigint "bebida_id", null: false
    t.bigint "empleado_id", null: false
    t.bigint "mesa_id", null: false
    t.integer "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bebida_id"], name: "index_pedidos_on_bebida_id"
    t.index ["empleado_id"], name: "index_pedidos_on_empleado_id"
    t.index ["entrada_id"], name: "index_pedidos_on_entrada_id"
    t.index ["fondo_id"], name: "index_pedidos_on_fondo_id"
    t.index ["mesa_id"], name: "index_pedidos_on_mesa_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "rol"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "pedidos", "bebidas"
  add_foreign_key "pedidos", "empleados"
  add_foreign_key "pedidos", "entradas"
  add_foreign_key "pedidos", "fondos"
  add_foreign_key "pedidos", "mesas"
end
