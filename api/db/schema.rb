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

ActiveRecord::Schema.define(version: 2021_05_16_082326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.bigint "restaurant_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["restaurant_id"], name: "index_foods_on_restaurant_id"
  end

  create_table "line_foods", force: :cascade do |t|
    t.bigint "food_id", null: false
    t.bigint "restaurant_id", null: false
    t.bigint "order_id"
    t.integer "count", default: 0, null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_line_foods_on_food_id"
    t.index ["order_id"], name: "index_line_foods_on_order_id"
    t.index ["restaurant_id"], name: "index_line_foods_on_restaurant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "total_price", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name", null: false
    t.integer "fee", default: 0, null: false
    t.integer "time_required", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "foods", "restaurants"
  add_foreign_key "line_foods", "foods"
  add_foreign_key "line_foods", "orders"
  add_foreign_key "line_foods", "restaurants"
end
