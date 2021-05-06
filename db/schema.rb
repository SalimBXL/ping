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

ActiveRecord::Schema.define(version: 2021_05_05_140342) do

  create_table "devices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ips", force: :cascade do |t|
    t.string "hostname"
    t.string "ip_address"
    t.string "plug"
    t.integer "room_id"
    t.integer "device_id"
    t.integer "operating_system_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["device_id"], name: "index_ips_on_device_id"
    t.index ["operating_system_id"], name: "index_ips_on_operating_system_id"
    t.index ["room_id"], name: "index_ips_on_room_id"
  end

  create_table "operating_systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "sector_id"
    t.string "name"
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["sector_id"], name: "index_rooms_on_sector_id"
  end

  create_table "sectors", force: :cascade do |t|
    t.string "name"
    t.integer "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_sectors_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "floor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ips", "devices"
  add_foreign_key "ips", "operating_systems"
  add_foreign_key "ips", "rooms"
  add_foreign_key "rooms", "sectors"
  add_foreign_key "sectors", "services"
end
