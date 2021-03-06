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

ActiveRecord::Schema.define(version: 2018_06_30_041645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "about_page_items", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "audios", force: :cascade do |t|
    t.string "title"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_audios_on_event_id"
  end

  create_table "benefactors", force: :cascade do |t|
    t.text "image_caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.string "title"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "ticket_url"
    t.string "you_tube_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generous_supporters", force: :cascade do |t|
    t.string "name"
    t.string "website_url"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_page_items", force: :cascade do |t|
    t.text "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "audios", "events"
end
