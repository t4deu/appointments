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

ActiveRecord::Schema.define(version: 20150802210506) do

  create_table "agendas", force: :cascade do |t|
    t.integer  "provider_id", limit: 4
    t.time     "start_hour"
    t.time     "end_hour"
    t.boolean  "mon"
    t.boolean  "tue"
    t.boolean  "wed"
    t.boolean  "thu"
    t.boolean  "fri"
    t.boolean  "sat"
    t.boolean  "sun"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.integer  "client_id",   limit: 4
    t.integer  "provider_id", limit: 4
    t.integer  "service_id",  limit: 4
    t.datetime "start_at"
    t.datetime "end_at"
    t.text     "notes",       limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 20
    t.string   "cellphone",  limit: 20
    t.string   "zapzap",     limit: 20
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "providers", force: :cascade do |t|
    t.integer  "venue_id",   limit: 4
    t.string   "name",       limit: 255, null: false
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 20
    t.string   "cellphone",  limit: 20
    t.string   "zapzap",     limit: 20
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "services", force: :cascade do |t|
    t.integer  "venue_id",    limit: 4
    t.string   "name",        limit: 255,                           null: false
    t.text     "description", limit: 65535
    t.integer  "duration",    limit: 4
    t.decimal  "price",                     precision: 8, scale: 2, null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

  create_table "services_providers", id: false, force: :cascade do |t|
    t.integer "service_id",  limit: 4
    t.integer "provider_id", limit: 4
  end

  add_index "services_providers", ["provider_id"], name: "index_services_providers_on_provider_id", using: :btree
  add_index "services_providers", ["service_id"], name: "index_services_providers_on_service_id", using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "state",      limit: 2
    t.string   "city",       limit: 255
    t.string   "zip",        limit: 8
    t.string   "address",    limit: 255
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 20
    t.string   "cellphone",  limit: 20
    t.string   "zapzap",     limit: 20
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
