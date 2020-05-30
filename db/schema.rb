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

ActiveRecord::Schema.define(version: 2020_05_15_080128) do

  create_table "bank_accounts", force: :cascade do |t|
    t.string "currency"
    t.string "iban"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_bank_accounts_on_user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "purchase_spread"
    t.string "sale_spread"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "spreads", force: :cascade do |t|
    t.string "spreadable_type"
    t.integer "spreadable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["spreadable_type", "spreadable_id"], name: "index_spreads_on_spreadable_type_and_spreadable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "group_id"
    t.index ["group_id"], name: "index_users_on_group_id"
  end

  add_foreign_key "bank_accounts", "users"
  add_foreign_key "users", "groups"
end
