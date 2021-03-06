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

ActiveRecord::Schema.define(version: 20140802203648) do

  create_table "admins", force: true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "section_id"
    t.string   "tags"
    t.string   "date"
  end

  create_table "photos", force: true do |t|
    t.string   "url"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_data"
    t.string   "tags"
  end

  create_table "sections", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stats", force: true do |t|
    t.integer  "hours_worked"
    t.integer  "hours_slept"
    t.integer  "hours_fitness"
    t.integer  "day_rating"
    t.integer  "mg_caffeine"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_id"
  end

end
