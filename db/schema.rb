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

ActiveRecord::Schema.define(version: 2020_10_22_212955) do

  create_table "adventures", force: :cascade do |t|
    t.string "location"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "race"
    t.string "char_class"
    t.integer "health_points"
    t.integer "exp_points"
    t.string "stats"
    t.boolean "adventuring_party"
    t.integer "adventure_id"
    t.integer "player_id"
  end

  create_table "item_weapons", force: :cascade do |t|
    t.string "name"
    t.string "stats_bonus"
    t.integer "character_id"
    t.integer "adventure_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "health_points"
    t.string "attack"
    t.integer "adventure_id"
  end

  create_table "player_characters", force: :cascade do |t|
    t.integer "player_id"
    t.integer "character_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "username"
    t.string "password"
  end

end
