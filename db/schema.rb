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

ActiveRecord::Schema.define(version: 2020_07_15_093941) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "appointment_id"
    t.integer "location_id"
    t.integer "employee_id"
    t.integer "client_id"
    t.integer "child_id"
    t.text "notes"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "service_id"
    t.decimal "price"
    t.integer "duration"
    t.string "status"
    t.datetime "change_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service2"
    t.boolean "has_specific_employee"
  end

  create_table "batchmanifests", force: :cascade do |t|
    t.string "filename"
    t.string "filetype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "client_first_name"
    t.string "client_last_name"
    t.string "email"
    t.string "mobile_phone"
    t.string "work_phone"
    t.string "home_phone"
    t.string "street_address"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "country"
    t.string "gender"
    t.boolean "can_receive_automated_emails"
    t.boolean "can_receive_manual_emails"
    t.boolean "can_receive_automated_sms"
    t.boolean "can_receive_manual_sms"
    t.string "contact_preference"
    t.string "client_since"
    t.string "notes"
    t.string "preferred_employee_id"
    t.string "preferred_location_id"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.date "date_of_birth"
    t.integer "associated_location_ids"
    t.string "pet_name"
    t.integer "child_id"
  end

  create_table "customfields", force: :cascade do |t|
    t.string "uuid"
    t.string "title"
    t.string "field_type"
    t.boolean "required"
    t.string "applicable_to"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer "location_id"
    t.integer "primary_key"
    t.string "nickname"
    t.string "country"
    t.string "street_address"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone_number"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petcategories", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.boolean "online"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "petservices", force: :cascade do |t|
    t.integer "service_id"
    t.integer "category_id"
    t.string "name"
    t.string "description"
    t.integer "duration"
    t.boolean "is_add_on"
    t.boolean "is_custom"
    t.integer "breed_group_id"
    t.string "sku"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["service_id"], name: "index_petservices_on_service_id", unique: true
  end

  create_table "saloncategories", force: :cascade do |t|
    t.integer "category_id"
    t.string "name"
    t.boolean "online"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salonpricings", force: :cascade do |t|
    t.integer "service_id"
    t.integer "location_id"
    t.integer "employee_id"
    t.decimal "price"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salonservices", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "service_id"
    t.integer "category_id"
    t.string "name"
    t.string "description"
    t.integer "duration"
    t.boolean "is_add_on"
    t.boolean "is_custom"
    t.integer "breed_group_id"
    t.string "sku"
    t.boolean "deleted"
  end

  create_table "staffs", force: :cascade do |t|
    t.integer "employee_id"
    t.string "name"
    t.string "title"
    t.string "email"
    t.string "username"
    t.integer "location_id"
    t.boolean "deleted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "first_name"
    t.string "last_name"
    t.string "string"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
