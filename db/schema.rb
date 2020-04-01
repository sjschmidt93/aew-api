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

ActiveRecord::Schema.define(version: 2020_04_01_155837) do

  create_table "matches", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches_wrestlers", id: false, force: :cascade do |t|
    t.integer "wrestler_id", null: false
    t.integer "match_id", null: false
    t.index ["match_id", "wrestler_id"], name: "index_matches_wrestlers_on_match_id_and_wrestler_id"
    t.index ["wrestler_id", "match_id"], name: "index_matches_wrestlers_on_wrestler_id_and_match_id"
  end

  create_table "wrestlers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
