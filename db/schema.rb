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

ActiveRecord::Schema.define(version: 20140429195222) do

  create_table "common_areas", force: true do |t|
    t.integer  "submissions_id"
    t.string   "type"
    t.string   "main_location"
    t.string   "sub_location"
    t.string   "severity"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "floor"
    t.string   "repair_type"
  end

  add_index "common_areas", ["floor"], name: "index_common_areas_on_floor"
  add_index "common_areas", ["repair_type"], name: "index_common_areas_on_repair_type"
  add_index "common_areas", ["submissions_id"], name: "index_common_areas_on_submissions_id"

  create_table "private_areas", force: true do |t|
    t.integer  "submissions_id"
    t.string   "type"
    t.string   "main_location"
    t.string   "sub_location"
    t.string   "severity"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "repair_type"
    t.integer  "floor"
  end

  add_index "private_areas", ["floor"], name: "index_private_areas_on_floor"
  add_index "private_areas", ["repair_type"], name: "index_private_areas_on_repair_type"
  add_index "private_areas", ["submissions_id"], name: "index_private_areas_on_submissions_id"

  create_table "profiles", force: true do |t|
    t.integer  "submissions_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "building"
    t.integer  "unit"
    t.string   "location_option"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["submissions_id"], name: "index_profiles_on_submissions_id"

  create_table "submissions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
