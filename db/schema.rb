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

ActiveRecord::Schema.define(version: 2019_08_28_102210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_attendances_on_event_id"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.bigint "attendance_id"
    t.time "start_time"
    t.time "end_time"
    t.boolean "slot_taken"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendance_id"], name: "index_availabilities_on_attendance_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.string "address"
    t.string "organizer_name"
    t.string "organizer_address"
    t.string "organizer_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.bigint "event_id"
    t.time "agreed_timeslot"
    t.string "matching_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "investor_id"
    t.integer "startup_id"
    t.index ["event_id"], name: "index_meetings_on_event_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind"
    t.string "first_name"
    t.string "last_name"
    t.string "company_name"
    t.string "position"
    t.string "company_city"
    t.string "firm_description"
    t.string "stages"
    t.string "sectors"
    t.string "business_models"
    t.string "selling_to"
    t.string "company_url"
    t.string "launch_status"
    t.integer "company_founding_year"
    t.boolean "generating_revenue"
    t.boolean "profitable"
    t.string "ticket_size_min"
    t.string "mobile"
    t.string "ticket_size_max"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "viewings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "attendance_id"
    t.boolean "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attendance_id"], name: "index_viewings_on_attendance_id"
    t.index ["user_id"], name: "index_viewings_on_user_id"
  end

  add_foreign_key "attendances", "events"
  add_foreign_key "attendances", "users"
  add_foreign_key "availabilities", "attendances"
  add_foreign_key "meetings", "events"
  add_foreign_key "viewings", "attendances"
  add_foreign_key "viewings", "users"
end
