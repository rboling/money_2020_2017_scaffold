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

ActiveRecord::Schema.define(version: 20171021235343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "synchrony_account_num"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "customer_id"
    t.date     "purchase_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "purchases", ["customer_id"], name: "index_purchases_on_customer_id", using: :btree

  create_table "purchases_skus", id: false, force: :cascade do |t|
    t.integer "sku_id",      null: false
    t.integer "purchase_id", null: false
  end

  add_index "purchases_skus", ["purchase_id", "sku_id"], name: "index_purchases_skus_on_purchase_id_and_sku_id", using: :btree
  add_index "purchases_skus", ["sku_id", "purchase_id"], name: "index_purchases_skus_on_sku_id_and_purchase_id", using: :btree

  create_table "skus", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "synchrony_sku"
  end

  create_table "skus_transactions", id: false, force: :cascade do |t|
    t.integer "sku_id",         null: false
    t.integer "transaction_id", null: false
  end

  add_index "skus_transactions", ["sku_id", "transaction_id"], name: "index_skus_transactions_on_sku_id_and_transaction_id", using: :btree
  add_index "skus_transactions", ["transaction_id", "sku_id"], name: "index_skus_transactions_on_transaction_id_and_sku_id", using: :btree

  create_table "transactions", force: :cascade do |t|
    t.date     "purchase_date"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "purchases", "customers"
end
