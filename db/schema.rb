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

ActiveRecord::Schema.define(version: 20160127000735) do

  create_table "arrivals", force: :cascade do |t|
    t.integer  "bean_id"
    t.string   "arrival_type"
    t.date     "arrival_date"
    t.boolean  "soldout"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.date     "soldout_date"
  end

  create_table "bean_buys", force: :cascade do |t|
    t.integer  "arrival_id"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beans", force: :cascade do |t|
    t.string   "name"
    t.string   "bean_type"
    t.integer  "supplier_id"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "blend_beans", force: :cascade do |t|
    t.integer  "bean_id"
    t.string   "blended_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "menus", force: :cascade do |t|
    t.integer  "arrival_id"
    t.integer  "price"
    t.string   "temperature"
    t.string   "variety"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "menu_id"
    t.integer  "person_id"
    t.time     "time"
    t.string   "price_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "person_type"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.integer  "arrival_id"
    t.integer  "stockholder_id"
    t.integer  "cost"
    t.integer  "dividend"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "straight_beans", force: :cascade do |t|
    t.integer  "bean_id"
    t.string   "loast"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
