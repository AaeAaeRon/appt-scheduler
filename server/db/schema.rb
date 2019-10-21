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

ActiveRecord::Schema.define(version: 2019_10_21_204622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.integer "client_id"
    t.string "c_name"
    t.integer "pro_id"
    t.string "pro_name"
    t.integer "service_id"
    t.integer "price"
    t.string "startDate"
    t.string "endDate"
    t.string "title", default: "null"
    t.boolean "allDay", default: false
    t.integer "duration", default: 60
    t.boolean "canceled", default: false
    t.string "cancelation_reason", default: "null"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "cell_num"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.index ["confirmation_token"], name: "index_clients_on_confirmation_token", unique: true
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_clients_on_unlock_token", unique: true
  end

  create_table "pros", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "cell_num"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 5, null: false
    t.string "unlock_token"
    t.index ["confirmation_token"], name: "index_pros_on_confirmation_token", unique: true
    t.index ["email"], name: "index_pros_on_email", unique: true
    t.index ["reset_password_token"], name: "index_pros_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_pros_on_unlock_token", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.integer "pro_id"
    t.string "name"
    t.integer "price"
    t.string "description"
    t.integer "duration"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
