# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_08_07_142611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bids", force: :cascade do |t|
    t.integer "client_id"
    t.integer "status"
    t.string "additional"
    t.string "tags"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.string "description"
    t.string "tags"
    t.string "manufacturer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "vat"
    t.string "tags"
    t.string "additional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contact_people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone"
    t.integer "supplier_id"
    t.integer "client_id"
    t.string "additional"
    t.string "tags"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "facturas", force: :cascade do |t|
    t.string "facturownia_id"
    t.string "additional"
    t.string "tags"
    t.integer "status"
    t.integer "bid_id"
    t.integer "offer_id"
    t.json "files"
    t.float "sum"
    t.string "sum_currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "kits", force: :cascade do |t|
    t.integer "offer_id"
    t.integer "category_id"
    t.float "weight"
    t.float "height"
    t.float "width"
    t.string "tags"
    t.string "additional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offers", force: :cascade do |t|
    t.boolean "incoming"
    t.integer "type"
    t.integer "status"
    t.integer "supplier_id"
    t.integer "client_id"
    t.integer "bid_id"
    t.json "files"
    t.string "tags"
    t.string "additional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "kit_id"
    t.integer "spare_part_id"
    t.float "price"
    t.string "price_currency"
    t.string "additional"
    t.string "tags"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spare_parts", force: :cascade do |t|
    t.string "name"
    t.integer "category_id"
    t.string "description"
    t.string "tags"
    t.json "images"
    t.json "files"
    t.string "manufacturer"
    t.integer "kit_id"
    t.float "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "vat"
    t.string "tags"
    t.string "additional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.string "additional"
    t.string "tags"
    t.integer "status"
    t.integer "offer_id"
    t.json "files"
    t.string "shipping_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.string "token"
    t.string "refresh_token"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
