# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_13_084835) do

  create_table "bookings", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "description"
    t.integer "space_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["space_id"], name: "index_bookings_on_space_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name", null: false
  end

  add_foreign_key "bookings", "spaces"
end
