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

ActiveRecord::Schema.define(version: 20151205183522) do

  create_table "accounts_workout_plans", id: false, force: :cascade do |t|
    t.integer  "workout_plans_id"
    t.integer  "account_id"
    t.datetime "startdate"
  end

  add_index "accounts_workout_plans", ["account_id"], name: "index_accounts_workout_plans_on_account_id"
  add_index "accounts_workout_plans", ["workout_plans_id"], name: "index_accounts_workout_plans_on_workout_plans_id"

  create_table "events", force: :cascade do |t|
    t.datetime "date"
    t.integer  "user_id"
    t.integer  "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "microposts", force: :cascade do |t|
    t.string   "workoutName"
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.decimal  "belly"
    t.decimal  "arms"
    t.decimal  "legs"
    t.decimal  "butt"
    t.decimal  "feet"
    t.decimal  "inches"
    t.decimal  "intensity"
    t.integer  "account_id"
    t.integer  "workout_id"
    t.decimal  "weight"
    t.datetime "length"
    t.integer  "fun"
    t.integer  "goal"
    t.integer  "lose"
    t.integer  "experience"
    t.integer  "section"
    t.integer  "achieve"
    t.integer  "favorite"
    t.integer  "longest"
    t.integer  "average"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "workout_plans", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "length"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "date"
    t.date     "start_time"
    t.integer  "factor"
  end

end
