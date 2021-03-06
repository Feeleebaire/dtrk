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

ActiveRecord::Schema.define(version: 20180511153240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "media_publishers", force: :cascade do |t|
    t.bigint "publisher_id"
    t.string "offre"
    t.string "type_pub"
    t.string "format"
    t.string "emplacement"
    t.string "rubrique"
    t.float "tarif"
    t.string "categorie"
    t.bigint "target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publisher_id"], name: "index_media_publishers_on_publisher_id"
    t.index ["target_id"], name: "index_media_publishers_on_target_id"
  end

  create_table "plan_ads", force: :cascade do |t|
    t.bigint "media_publisher_id"
    t.bigint "plan_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["media_publisher_id"], name: "index_plan_ads_on_media_publisher_id"
    t.index ["plan_id"], name: "index_plan_ads_on_plan_id"
  end

  create_table "plans", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "type_id"
    t.index ["type_id"], name: "index_publishers_on_type_id"
  end

  create_table "targets", force: :cascade do |t|
    t.integer "age"
    t.string "sexe"
    t.text "csp", default: [], array: true
    t.text "tag", default: [], array: true
    t.text "geo", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
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
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "media_publishers", "publishers"
  add_foreign_key "media_publishers", "targets"
  add_foreign_key "plan_ads", "media_publishers"
  add_foreign_key "plan_ads", "plans"
  add_foreign_key "plans", "users"
  add_foreign_key "publishers", "types"
end
