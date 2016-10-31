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

ActiveRecord::Schema.define(version: 20161031020230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.integer "section_id"
    t.string  "contenido"
    t.string  "link"
    t.boolean "active",     default: true
    t.index ["section_id"], name: "index_actions_on_section_id", using: :btree
  end

  create_table "bill_types", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bills", force: :cascade do |t|
    t.integer  "business_partner_id"
    t.integer  "coin_id"
    t.integer  "bill_type_id"
    t.text     "nota"
    t.string   "numero"
    t.date     "fecha"
    t.date     "fecha_de_vencimiento"
    t.boolean  "anulada"
    t.integer  "payment_type_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["bill_type_id"], name: "index_bills_on_bill_type_id", using: :btree
    t.index ["business_partner_id"], name: "index_bills_on_business_partner_id", using: :btree
    t.index ["coin_id"], name: "index_bills_on_coin_id", using: :btree
    t.index ["payment_type_id"], name: "index_bills_on_payment_type_id", using: :btree
  end

  create_table "business_partner_types", force: :cascade do |t|
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "business_partners", force: :cascade do |t|
    t.string   "nombre",                   default: "",   null: false
    t.integer  "business_partner_type_id",                null: false
    t.integer  "coin_id",                                 null: false
    t.string   "telefono",                 default: ""
    t.string   "celular"
    t.string   "email",                    default: ""
    t.boolean  "activo",                   default: true, null: false
    t.text     "direccion"
    t.string   "identificador",            default: "",   null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["business_partner_type_id"], name: "index_business_partners_on_business_partner_type_id", using: :btree
    t.index ["coin_id"], name: "index_business_partners_on_coin_id", using: :btree
  end

  create_table "coins", force: :cascade do |t|
    t.string   "descripcion"
    t.string   "simbolo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "galleries", force: :cascade do |t|
    t.integer "section_id"
    t.string  "titulo"
    t.string  "subtitulo"
    t.text    "contenido"
    t.string  "imagen"
    t.integer "position"
    t.boolean "active",     default: true
    t.index ["section_id"], name: "index_galleries_on_section_id", using: :btree
  end

  create_table "generals", force: :cascade do |t|
    t.string  "titulo"
    t.string  "nombre",              limit: 30,                  null: false
    t.string  "nombre_comercial",    limit: 50,                  null: false
    t.string  "actividad_comercial", limit: 100,                 null: false
    t.string  "ruc",                 limit: 30
    t.string  "cedula",              limit: 20
    t.string  "direccion",           limit: 100
    t.string  "correo",              limit: 30
    t.string  "telefono",            limit: 30,                  null: false
    t.text    "slogan"
    t.string  "logo"
    t.boolean "demo",                            default: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer "template_id"
    t.integer "style_id"
    t.string  "nombre"
    t.string  "titulo"
    t.string  "menu_title"
    t.text    "descripcion"
    t.boolean "mostrar_en_menu", default: true
    t.boolean "draft",           default: false
    t.boolean "eliminable",      default: true
    t.string  "seo_title"
    t.integer "page_id"
    t.integer "position"
    t.boolean "active",          default: true
    t.index ["page_id"], name: "index_pages_on_page_id", using: :btree
    t.index ["style_id"], name: "index_pages_on_style_id", using: :btree
    t.index ["template_id"], name: "index_pages_on_template_id", using: :btree
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "description"
    t.string   "imei"
    t.string   "serie"
    t.date     "fecha_de_ingreso"
    t.decimal  "compra"
    t.decimal  "utilidad"
    t.decimal  "venta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "sections", force: :cascade do |t|
    t.integer "template_id"
    t.integer "page_id"
    t.string  "titulo"
    t.string  "subtitulo"
    t.text    "contenido"
    t.string  "link"
    t.integer "position"
    t.boolean "active",      default: true
    t.boolean "demo",        default: false
    t.index ["page_id"], name: "index_sections_on_page_id", using: :btree
    t.index ["template_id"], name: "index_sections_on_template_id", using: :btree
  end

  create_table "socials", force: :cascade do |t|
    t.string  "nombre", default: ""
    t.boolean "activo", default: false
    t.string  "url",    default: ""
    t.string  "icono"
    t.boolean "demo",   default: false
  end

  create_table "styles", force: :cascade do |t|
    t.integer "template_id"
    t.boolean "activo",      default: false
    t.string  "descripcion", default: ""
    t.index ["template_id"], name: "index_styles_on_template_id", using: :btree
  end

  create_table "templates", force: :cascade do |t|
    t.string  "titulo"
    t.string  "background"
    t.string  "path"
    t.boolean "activo",     default: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bills", "bill_types"
  add_foreign_key "bills", "business_partners"
  add_foreign_key "bills", "coins"
  add_foreign_key "bills", "payment_types"
end
