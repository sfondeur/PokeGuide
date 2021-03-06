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

ActiveRecord::Schema.define(version: 2018_10_24_200854) do

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "gen_name"
    t.string "region_name"
    t.string "pokemon_entries"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generations", force: :cascade do |t|
    t.string "gen_name"
    t.string "region_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.text "debuting_pokemon"
    t.text "games"
    t.index ["game_id"], name: "index_generations_on_game_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.string "pokedex_number"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "generation"
    t.string "generation_num"
    t.string "type_one"
    t.string "type_two"
    t.string "height"
    t.string "weight"
    t.string "shiny_sprite"
  end

end
