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

ActiveRecord::Schema.define(version: 2021_08_24_184131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "make", null: false
    t.string "model", null: false
    t.integer "year", null: false
    t.string "color", null: false
    t.string "drivetrain", null: false
    t.string "description", null: false
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_cars_on_owner_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.bigint "location_id"
    t.bigint "organizer_id"
    t.bigint "attendees_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendees_id"], name: "index_events_on_attendees_id"
    t.index ["location_id"], name: "index_events_on_location_id"
    t.index ["organizer_id"], name: "index_events_on_organizer_id"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.string "track_type", null: false
    t.float "length", null: false
    t.integer "corners"
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "cars", "users", column: "owner_id"
  add_foreign_key "events", "tracks", column: "location_id"
  add_foreign_key "events", "users", column: "attendees_id"
  add_foreign_key "events", "users", column: "organizer_id"
end
