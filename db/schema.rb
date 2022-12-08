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

ActiveRecord::Schema[7.0].define(version: 2022_12_08_054429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.integer "comp_id"
    t.string "company_name"
    t.integer "no_of_employees"
    t.text "address"
    t.text "dept_name"
    t.integer "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "firstseconds", force: :cascade do |t|
    t.bigint "table_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_firstseconds_on_company_id"
    t.index ["table_id"], name: "index_firstseconds_on_table_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "r_id"
    t.text "project_name"
    t.text "role_name"
    t.text "role_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "company_id"
    t.integer "role_id"
    t.string "first_name"
    t.string "last_name"
    t.text "email"
    t.integer "age"
    t.string "gender"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.integer "company_id"
    t.integer "role_id"
    t.string "first_name"
    t.string "last_name"
    t.text "email"
    t.integer "age"
    t.text "gender"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "firstseconds", "companies"
  add_foreign_key "firstseconds", "tables"
end
