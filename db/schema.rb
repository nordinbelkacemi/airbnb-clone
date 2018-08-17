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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_08_16_164641) do
=======
ActiveRecord::Schema.define(version: 2018_08_14_193323) do
>>>>>>> 0b52788462b237bfd0e51f93f96c036442d57263

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "day"
    t.boolean "accepted"
    t.bigint "user_id"
    t.bigint "kitchen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kitchen_id"], name: "index_bookings_on_kitchen_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "kitchens", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.float "price"
    t.string "address"
    t.integer "rating"
    t.boolean "availability"
    t.string "photo"
    t.integer "capacity"
    t.text "amenities"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_kitchens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "photo"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "kitchens"
  add_foreign_key "bookings", "users"
  add_foreign_key "kitchens", "users"
end
