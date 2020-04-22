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

ActiveRecord::Schema.define(version: 2020_04_13_200324) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "championships", force: :cascade do |t|
    t.string "name", null: false
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_championships_on_name", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "date", null: false
    t.string "city", null: false
    t.string "venue", null: false
    t.integer "program", default: 0
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "event_id"
    t.integer "winning_side_id"
    t.integer "finish_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_matches_on_event_id"
    t.index ["winning_side_id"], name: "index_matches_on_winning_side_id"
  end

  create_table "reigns", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date"
    t.integer "championship_id"
    t.string "competitor_type"
    t.integer "competitor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["championship_id"], name: "index_reigns_on_championship_id"
    t.index ["competitor_type", "competitor_id"], name: "index_reigns_on_competitor_type_and_competitor_id"
  end

  create_table "sides", force: :cascade do |t|
    t.integer "match_id"
    t.string "competitor_type"
    t.integer "competitor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["competitor_type", "competitor_id"], name: "index_sides_on_competitor_type_and_competitor_id"
    t.index ["match_id"], name: "index_sides_on_match_id"
  end

  create_table "stable_memberships", force: :cascade do |t|
    t.integer "stable_id"
    t.integer "wrestler_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stable_id"], name: "index_stable_memberships_on_stable_id"
    t.index ["wrestler_id"], name: "index_stable_memberships_on_wrestler_id"
  end

  create_table "stables", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_stables_on_name", unique: true
  end

  create_table "tag_team_memberships", force: :cascade do |t|
    t.integer "tag_team_id"
    t.integer "wrestler_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tag_team_id"], name: "index_tag_team_memberships_on_tag_team_id"
    t.index ["wrestler_id"], name: "index_tag_team_memberships_on_wrestler_id"
  end

  create_table "tag_team_stable_memberships", force: :cascade do |t|
    t.integer "tag_team_id"
    t.integer "stable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stable_id"], name: "index_tag_team_stable_memberships_on_stable_id"
    t.index ["tag_team_id"], name: "index_tag_team_stable_memberships_on_tag_team_id"
  end

  create_table "tag_teams", force: :cascade do |t|
    t.string "name", null: false
    t.integer "stable_id"
    t.string "nickname"
    t.string "image_url"
    t.boolean "is_official", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_tag_teams_on_name", unique: true
    t.index ["stable_id"], name: "index_tag_teams_on_stable_id"
  end

  create_table "wrestlers", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname"
    t.integer "height"
    t.integer "weight"
    t.string "hometown"
    t.integer "division", default: 0
    t.string "image_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_wrestlers_on_name", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "matches", "sides", column: "winning_side_id"
end
