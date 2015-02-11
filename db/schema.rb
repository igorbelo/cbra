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

ActiveRecord::Schema.define(version: 20150211133218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "core_adresses", force: true do |t|
    t.string   "zip"
    t.integer  "number"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "core_adresses", ["customer_id"], name: "index_core_adresses_on_customer_id", using: :btree

  create_table "core_customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "core_order_items", force: true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "core_order_items", ["order_id"], name: "index_core_order_items_on_order_id", using: :btree
  add_index "core_order_items", ["product_id"], name: "index_core_order_items_on_product_id", using: :btree

  create_table "core_orders", force: true do |t|
    t.integer  "customer_id"
    t.integer  "address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "core_orders", ["address_id"], name: "index_core_orders_on_address_id", using: :btree
  add_index "core_orders", ["customer_id"], name: "index_core_orders_on_customer_id", using: :btree

  create_table "core_products", force: true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
