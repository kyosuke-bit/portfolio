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

ActiveRecord::Schema.define(version: 2021_07_14_061956) do

  create_table "reserves", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "srote_id"
    t.date "date"
    t.time "time"
    t.string "menu"
    t.datetime "treatement_time"
    t.string "stylist"
    t.integer "total_amount"
    t.integer "available_points"
    t.integer "use_points"
    t.integer "payment_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["srote_id"], name: "index_reserves_on_srote_id"
    t.index ["user_id"], name: "index_reserves_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
