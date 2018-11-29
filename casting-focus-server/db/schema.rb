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

ActiveRecord::Schema.define(version: 2018_11_29_205600) do

  create_table "character_classes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "character_classes_spells", force: :cascade do |t|
    t.integer "spell_id"
    t.integer "character_class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_class_id"], name: "index_character_classes_spells_on_character_class_id"
    t.index ["spell_id"], name: "index_character_classes_spells_on_spell_id"
  end

  create_table "spells", force: :cascade do |t|
    t.string "name"
    t.string "level"
    t.text "desc"
    t.text "higher_level"
    t.string "page"
    t.string "range"
    t.string "components"
    t.string "material"
    t.boolean "ritual"
    t.string "duration"
    t.boolean "concentration"
    t.string "casting_time"
    t.string "school"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
