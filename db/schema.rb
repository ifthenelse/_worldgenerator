# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2012_12_04_125204) do
  create_table "climates", force: :cascade do |t|
    t.string "name"
    t.decimal "probability"
    t.text "color"
    t.decimal "radius"
    t.decimal "scale"
    t.text "description"
    t.boolean "interacts"
    t.boolean "overlaps"
    t.decimal "x"
    t.decimal "y"
    t.decimal "z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "default"
  end

  create_table "zones", force: :cascade do |t|
    t.boolean "visited"
    t.decimal "x"
    t.decimal "y"
    t.decimal "z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
