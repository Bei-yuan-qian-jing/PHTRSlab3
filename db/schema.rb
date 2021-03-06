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

ActiveRecord::Schema.define(version: 20180104051826) do

  create_table "damagereports", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "tel"
    t.string "type"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "potholelists", force: :cascade do |t|
    t.integer "identify"
    t.string "address"
    t.integer "size"
    t.string "location"
    t.string "district"
    t.integer "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workorders", force: :cascade do |t|
    t.string "location"
    t.integer "size"
    t.string "crew_ID"
    t.integer "peoplenumber"
    t.text "assign_equipment"
    t.float "time"
    t.string "status"
    t.float "material_used"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
