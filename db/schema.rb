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

ActiveRecord::Schema.define(version: 2021_09_12_023036) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.string "phone_number"
    t.string "string"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents", force: :cascade do |t|
    t.string "agent_id"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "property_id"
    t.index ["agent_id"], name: "index_agents_on_agent_id", unique: true
    t.index ["property_id"], name: "index_agents_on_property_id"
  end

  create_table "applicants", force: :cascade do |t|
    t.integer "applicant_id"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.integer "phone_number"
    t.integer "property_applied"
    t.integer "property_occupied"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "applications", force: :cascade do |t|
    t.integer "applicant_id"
    t.date "datetime"
    t.integer "property"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicant_id"], name: "index_applications_on_applicant_id"
  end

  create_table "properties", force: :cascade do |t|
    t.integer "property_id"
    t.string "name"
    t.string "address"
    t.integer "size"
    t.boolean "terms_available"
    t.date "earliest_start_date"
    t.integer "apply_fee"
    t.integer "rent"
    t.integer "occupied_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "agent_id"
    t.index ["agent_id"], name: "index_properties_on_agent_id"
  end

  add_foreign_key "agents", "properties"
  # add_foreign_key "applicants", "applications"
end
