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

ActiveRecord::Schema.define(version: 20140409095625) do

  create_table "assignments", force: true do |t|
    t.integer  "event_id"
    t.integer  "mentor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.string   "url"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "place"
    t.string   "place_url"
    t.integer  "staff_count"
    t.boolean  "is_closed",   default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "lessons", force: true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.binary   "pdf_file"
  end

  create_table "locations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mentors", force: true do |t|
    t.integer  "location_id"
    t.string   "fb_user_id"
    t.text     "fb_token"
    t.text     "fb_token_secret"
    t.integer  "grade"
    t.integer  "rank"
    t.boolean  "is_applicant"
    t.boolean  "is_addmin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "principals", force: true do |t|
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.integer  "assignment_id"
    t.text     "q_1"
    t.text     "q_2"
    t.text     "q_3"
    t.text     "q_4"
    t.text     "q_secret"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
