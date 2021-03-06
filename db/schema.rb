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

ActiveRecord::Schema.define(version: 20170128041436) do

  create_table "categories", force: :cascade do |t|
    t.string   "nombre",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.integer  "entrada_id"
    t.date     "fecha",                                null: false
    t.time     "hora",                                 null: false
    t.text     "texto"
    t.boolean  "revisado",             default: false
    t.integer  "seguridad_usuario_id",                 null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "comentarios", ["entrada_id"], name: "index_comentarios_on_entrada_id"
  add_index "comentarios", ["seguridad_usuario_id"], name: "index_comentarios_on_seguridad_usuario_id"

  create_table "entradas", force: :cascade do |t|
    t.date     "fecha",                               null: false
    t.string   "titulo",                              null: false
    t.text     "texto"
    t.integer  "visitas",              default: 0
    t.boolean  "publicado",            default: true
    t.integer  "seguridad_usuario_id",                null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "category_id"
  end

  add_index "entradas", ["category_id"], name: "index_entradas_on_category_id"
  add_index "entradas", ["seguridad_usuario_id"], name: "index_entradas_on_seguridad_usuario_id"

  create_table "seguridad_usuarios", force: :cascade do |t|
    t.string   "username",               limit: 20,                 null: false
    t.string   "nombres",                limit: 250,                null: false
    t.string   "apellidos",              limit: 250,                null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.boolean  "activo",                             default: true
    t.string   "email",                              default: "",   null: false
    t.string   "encrypted_password",                 default: "",   null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,    null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "seguridad_usuarios", ["email"], name: "index_seguridad_usuarios_on_email", unique: true
  add_index "seguridad_usuarios", ["reset_password_token"], name: "index_seguridad_usuarios_on_reset_password_token", unique: true
  add_index "seguridad_usuarios", ["username"], name: "index_seguridad_usuarios_on_username", unique: true

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
