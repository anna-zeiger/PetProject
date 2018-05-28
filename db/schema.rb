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

ActiveRecord::Schema.define(version: 2018_05_26_165151) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cusines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurant_reviews", force: :cascade do |t|
    t.string "reviewer_name"
    t.integer "rating"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "restaurant_id"
    t.index ["restaurant_id"], name: "index_restaurant_reviews_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.boolean "accepts10bis"
    t.string "address"
    t.integer "maxDeliveryTime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "cusine_id"
    t.index ["cusine_id"], name: "index_restaurants_on_cusine_id"
  end

  add_foreign_key "restaurant_reviews", "restaurants"
  add_foreign_key "restaurants", "cusines"
end
