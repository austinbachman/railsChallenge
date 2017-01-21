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

ActiveRecord::Schema.define(version: 20170121020326) do

  create_table "analytes", force: :cascade do |t|
    t.string   "analyte_name"
    t.string   "result_range"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hospital_analytes", force: :cascade do |t|
    t.integer  "hospital_id"
    t.integer  "analyte_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hospital_physicians", force: :cascade do |t|
    t.integer "hospital_id"
    t.integer "physician_id"
    t.boolean "primary"
  end

  add_index "hospital_physicians", ["hospital_id"], name: "index_hospital_physicians_on_hospital_id"
  add_index "hospital_physicians", ["physician_id"], name: "index_hospital_physicians_on_physician_id"

  create_table "hospitals", force: :cascade do |t|
    t.string   "hospital_name"
    t.string   "hospital_address"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "patient_name"
    t.string   "patient_address"
    t.string   "patient_phone_number"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string   "physician_name"
    t.string   "physician_phone_number"
    t.string   "physician_type"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "results", force: :cascade do |t|
    t.integer  "result_value"
    t.datetime "reported_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "speciman_id"
    t.integer  "analyte_id"
  end

  create_table "specimen", force: :cascade do |t|
    t.string   "sample_name"
    t.date     "date_received"
    t.string   "sample_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "physician_id"
  end

end
