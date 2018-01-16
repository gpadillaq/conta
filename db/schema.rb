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

ActiveRecord::Schema.define(version: 20180114010935) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bill_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "bills", force: :cascade do |t|
    t.integer  "business_partner_id"
    t.integer  "coin_id"
    t.integer  "bill_type_id"
    t.text     "note"
    t.string   "number"
    t.date     "date"
    t.date     "expiration_date"
    t.boolean  "canceled"
    t.integer  "payment_type_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["bill_type_id"], name: "index_bills_on_bill_type_id", using: :btree
    t.index ["business_partner_id"], name: "index_bills_on_business_partner_id", using: :btree
    t.index ["coin_id"], name: "index_bills_on_coin_id", using: :btree
    t.index ["payment_type_id"], name: "index_bills_on_payment_type_id", using: :btree
  end

  create_table "business_partner_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "business_partners", force: :cascade do |t|
    t.string   "name",                     default: "",   null: false
    t.integer  "business_partner_type_id",                null: false
    t.integer  "coin_id",                                 null: false
    t.string   "telephone",                default: ""
    t.string   "cellphone"
    t.string   "email",                    default: ""
    t.boolean  "actived",                  default: true, null: false
    t.text     "direction"
    t.string   "id_number",                default: "",   null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.index ["business_partner_type_id"], name: "index_business_partners_on_business_partner_type_id", using: :btree
    t.index ["coin_id"], name: "index_business_partners_on_coin_id", using: :btree
  end

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
  end

  create_table "credit_applications", force: :cascade do |t|
    t.integer  "business_partner_id"
    t.date     "date"
    t.date     "expiration_date"
    t.integer  "credit_type_id"
    t.integer  "payment_frequency_id"
    t.integer  "payment_number"
    t.decimal  "amount"
    t.integer  "coin_id"
    t.text     "note"
    t.integer  "statu_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["business_partner_id"], name: "index_credit_applications_on_business_partner_id", using: :btree
    t.index ["coin_id"], name: "index_credit_applications_on_coin_id", using: :btree
    t.index ["credit_type_id"], name: "index_credit_applications_on_credit_type_id", using: :btree
    t.index ["payment_frequency_id"], name: "index_credit_applications_on_payment_frequency_id", using: :btree
    t.index ["statu_id"], name: "index_credit_applications_on_statu_id", using: :btree
  end

  create_table "credit_types", force: :cascade do |t|
    t.text    "name"
    t.decimal "interez"
    t.boolean "activo"
  end

  create_table "payment_frequencies", force: :cascade do |t|
    t.text     "name"
    t.boolean  "actived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string "name"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "imei"
    t.string   "serie"
    t.date     "fecha_de_ingreso"
    t.decimal  "compra"
    t.decimal  "utilidad"
    t.decimal  "venta"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "status", force: :cascade do |t|
    t.text    "name"
    t.boolean "actived"
  end

  create_table "storehouses", force: :cascade do |t|
    t.string  "name",                default: "",   null: false
    t.boolean "actived",             default: true, null: false
    t.integer "storehouses_type_id",                null: false
    t.index ["storehouses_type_id"], name: "index_storehouses_on_storehouses_type_id", using: :btree
  end

  create_table "storehouses_types", force: :cascade do |t|
    t.string "name", default: "", null: false
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
  add_foreign_key "credit_applications", "business_partners"
  add_foreign_key "credit_applications", "coins"
  add_foreign_key "credit_applications", "credit_types"
  add_foreign_key "credit_applications", "payment_frequencies"
  add_foreign_key "credit_applications", "status", column: "statu_id"
end
