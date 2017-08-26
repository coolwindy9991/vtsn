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

ActiveRecord::Schema.define(version: 20170217124336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "airline_briefings", force: :cascade do |t|
    t.string   "airline_code"
    t.string   "content"
    t.integer  "created_by"
    t.boolean  "is_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "airline_staffs", force: :cascade do |t|
    t.string   "airline_code"
    t.string   "staff_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "airlines", force: :cascade do |t|
    t.string   "airline_code"
    t.string   "airline"
    t.integer  "pax_team_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "airlines_slas", force: :cascade do |t|
    t.string   "airline_code"
    t.string   "category"
    t.string   "kpi"
    t.decimal  "target"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "target_unit"
  end

  create_table "cs_evaluations", force: :cascade do |t|
    t.string   "evaluator"
    t.string   "staff_id"
    t.string   "staff_name"
    t.date     "evaluation_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "flight_no"
  end

  create_table "cs_sop_questions", force: :cascade do |t|
    t.string   "question"
    t.boolean  "is_active"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "question_type"
  end

  create_table "day_schedules", force: :cascade do |t|
  end

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree

  create_table "qps_passengers", force: :cascade do |t|
    t.string   "staff_id"
    t.string   "flight_no"
    t.date     "evaluation_date"
    t.integer  "check_in"
    t.integer  "boarding"
    t.integer  "arrival"
    t.integer  "transit_transfer"
    t.integer  "special_assistant"
    t.integer  "lost_and_found"
    t.text     "comment"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "questionnaires", force: :cascade do |t|
    t.integer  "evaluation_id"
    t.integer  "question_id"
    t.integer  "answer"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "evaluation_type"
    t.string   "comment"
  end

  add_index "questionnaires", ["evaluation_id", "question_id"], name: "index_questionnaires_on_evaluation_id_and_question_id", unique: true, using: :btree
  add_index "questionnaires", ["evaluation_id"], name: "index_questionnaires_on_evaluation_id", using: :btree

  create_table "routings", force: :cascade do |t|
    t.string   "flight_no"
    t.string   "airline_code"
    t.string   "day_ops"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "seed_migration_data_migrations", force: :cascade do |t|
    t.string   "version"
    t.integer  "runtime"
    t.datetime "migrated_on"
  end

  create_table "sla_evaluations", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "airline_code"
    t.date     "evaluation_date"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "flight_no"
    t.text     "other_information"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin"
    t.string   "activation_digest"
    t.boolean  "activated",                      default: false
    t.datetime "activated_at"
    t.string   "staff_id"
    t.integer  "team_id"
    t.string   "encrypted_password", limit: 128
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
