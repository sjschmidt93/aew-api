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

ActiveRecord::Schema.define(version: 2020_04_06_165831) do

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
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "name", null: false
    t.date "date", null: false
    t.string "city", null: false
    t.string "venue", null: false
    t.integer "event_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "event_id"
    t.string "winner_ids", default: "--- []\n"
    t.integer "match_type", default: 0
    t.integer "finish_type", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_matches_on_event_id"
  end

  create_table "matches_tag_teams", id: false, force: :cascade do |t|
    t.integer "match_id", null: false
    t.integer "tag_team_id", null: false
    t.index ["match_id", "tag_team_id"], name: "index_matches_tag_teams_on_match_id_and_tag_team_id"
    t.index ["tag_team_id", "match_id"], name: "index_matches_tag_teams_on_tag_team_id_and_match_id"
  end

  create_table "matches_wrestlers", id: false, force: :cascade do |t|
    t.integer "wrestler_id", null: false
    t.integer "match_id", null: false
    t.index ["match_id", "wrestler_id"], name: "index_matches_wrestlers_on_match_id_and_wrestler_id"
    t.index ["wrestler_id", "match_id"], name: "index_matches_wrestlers_on_wrestler_id_and_match_id"
  end

  create_table "reigns", force: :cascade do |t|
    t.date "start_date", null: false
    t.date "end_date"
    t.integer "championship_id"
    t.integer "wrestler_id"
    t.integer "tag_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["championship_id"], name: "index_reigns_on_championship_id"
    t.index ["tag_team_id"], name: "index_reigns_on_tag_team_id"
    t.index ["wrestler_id"], name: "index_reigns_on_wrestler_id"
  end

  create_table "tag_teams", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tag_teams_wrestlers", id: false, force: :cascade do |t|
    t.integer "wrestler_id", null: false
    t.integer "tag_team_id", null: false
    t.index ["tag_team_id", "wrestler_id"], name: "index_tag_teams_wrestlers_on_tag_team_id_and_wrestler_id"
    t.index ["wrestler_id", "tag_team_id"], name: "index_tag_teams_wrestlers_on_wrestler_id_and_tag_team_id"
  end

  create_table "wrestlers", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
