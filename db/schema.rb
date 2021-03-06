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

ActiveRecord::Schema.define(version: 20150114052505) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "street_no",   limit: 4
    t.text     "street_name", limit: 65535
    t.integer  "city_id",     limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "categories", force: :cascade do |t|
    t.integer  "image_id",   limit: 4
    t.text     "name",       limit: 65535
    t.integer  "parent_id",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "cities", force: :cascade do |t|
    t.text     "name",              limit: 65535
    t.integer  "shipping_class_id", limit: 4
    t.integer  "country_id",        limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "countries", force: :cascade do |t|
    t.text     "name",              limit: 65535
    t.integer  "shipping_class_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "images", force: :cascade do |t|
    t.text     "url",        limit: 65535
    t.text     "alt",        limit: 65535
    t.text     "title",      limit: 65535
    t.integer  "height",     limit: 4
    t.integer  "width",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "pages", force: :cascade do |t|
    t.text     "title",      limit: 65535
    t.text     "subtitle",   limit: 65535
    t.integer  "image_id",   limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "cost",         limit: 4
    t.text     "name",         limit: 65535
    t.integer  "price",        limit: 4
    t.integer  "image_id",     limit: 4
    t.integer  "qty",          limit: 4
    t.integer  "restock_time", limit: 4
    t.text     "description",  limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sales", force: :cascade do |t|
    t.text     "sale_name",    limit: 65535
    t.integer  "sale_percent", limit: 4
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
