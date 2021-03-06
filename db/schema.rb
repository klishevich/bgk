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

ActiveRecord::Schema.define(version: 20160705192203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.integer  "bootsy_resource_id"
    t.string   "bootsy_resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "topic"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_calls", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "time"
    t.text     "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "fio"
    t.string   "position"
    t.string   "phone"
    t.string   "email"
    t.string   "org_inn"
    t.string   "org_name"
    t.string   "org_phone"
    t.string   "org_site"
    t.string   "interest"
    t.string   "supply_date"
    t.string   "supply_city"
    t.string   "supply_address"
    t.text     "comment"
    t.boolean  "need_callback"
    t.boolean  "need_kp"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "myfile"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "keywords"
    t.text     "description"
    t.string   "url"
    t.string   "h1"
    t.text     "content"
    t.string   "menu_title"
    t.integer  "menu_order"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "code"
    t.string   "pageimgs",    default: [],              array: true
  end

  create_table "porder_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "porder_id"
    t.integer  "quantity"
    t.string   "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "porder_items", ["porder_id"], name: "index_porder_items_on_porder_id", using: :btree
  add_index "porder_items", ["product_id"], name: "index_porder_items_on_product_id", using: :btree

  create_table "porder_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "porders", force: :cascade do |t|
    t.string   "company_name"
    t.string   "person_name"
    t.string   "position"
    t.string   "phone"
    t.string   "email"
    t.text     "comment"
    t.integer  "porder_status_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "porders", ["porder_status_id"], name: "index_porders_on_porder_status_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.boolean  "prop1"
    t.boolean  "prop2"
    t.boolean  "prop3"
    t.boolean  "prop4"
    t.boolean  "prop5"
    t.boolean  "prop6"
    t.text     "desc_col1"
    t.text     "desc_col2"
    t.text     "desc_full"
    t.string   "productimg"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "order"
    t.string   "code"
  end

  add_index "products", ["category_id"], name: "index_products_on_category_id", using: :btree

  add_foreign_key "porder_items", "porders"
  add_foreign_key "porder_items", "products"
  add_foreign_key "porders", "porder_statuses"
  add_foreign_key "products", "categories"
end
