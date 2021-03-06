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

ActiveRecord::Schema.define(version: 2019_02_21_110047) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "elder_skills", force: :cascade do |t|
    t.bigint "elder_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["elder_id"], name: "index_elder_skills_on_elder_id"
    t.index ["skill_id"], name: "index_elder_skills_on_skill_id"
  end

  create_table "elders", force: :cascade do |t|
    t.string "full_name"
    t.string "address"
    t.string "description"
    t.boolean "available", default: true
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_elders_on_user_id"
  end

  create_table "rents", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "elder_id"
    t.date "start_date"
    t.date "end_date"
    t.string "review"
    t.integer "rating", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
    t.index ["elder_id"], name: "index_rents_on_elder_id"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
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
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "elder_skills", "elders"
  add_foreign_key "elder_skills", "skills"
  add_foreign_key "elders", "users"
  add_foreign_key "rents", "elders"
  add_foreign_key "rents", "users"
end
