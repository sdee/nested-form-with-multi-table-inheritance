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

ActiveRecord::Schema.define(version: 20140313050756) do

  create_table "books", force: true do |t|
    t.string   "author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pens", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "producible_id"
    t.string   "producible_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "store_id"
    t.string   "as_product_id"
    t.string   "as_product_type"
    t.decimal  "cost",            precision: 10, scale: 0
  end

  create_table "stores", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
