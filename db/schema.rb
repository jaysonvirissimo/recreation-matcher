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

ActiveRecord::Schema.define(version: 2018_04_25_035927) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authem_sessions", force: :cascade do |t|
    t.string "role", null: false
    t.string "subject_type", null: false
    t.integer "subject_id", null: false
    t.string "token", limit: 60, null: false
    t.datetime "expires_at", null: false
    t.integer "ttl", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["expires_at", "subject_type", "subject_id"], name: "index_authem_sessions_subject"
    t.index ["expires_at", "token"], name: "index_authem_sessions_on_expires_at_and_token", unique: true
    t.index ["subject_type", "subject_id"], name: "index_authem_sessions_on_subject_type_and_subject_id"
  end

  create_table "matching_sessions", force: :cascade do |t|
    t.integer "starting_user_id"
    t.integer "following_user_id"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["following_user_id"], name: "index_matching_sessions_on_following_user_id"
    t.index ["starting_user_id"], name: "index_matching_sessions_on_starting_user_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "value"
    t.integer "matching_session_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_ratings_on_activity_id"
    t.index ["matching_session_id"], name: "index_ratings_on_matching_session_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "password_reset_token", limit: 60, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
