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

ActiveRecord::Schema.define(version: 2022_03_19_042649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "company_name"
    t.string "company_address"
    t.text "company_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string "firstname"
    t.string "middlename"
    t.string "lastname"
    t.string "email"
    t.string "phonenumber"
    t.string "gender"
    t.string "clinicname"
    t.string "clinicaddress"
    t.string "licensenumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "drugs", force: :cascade do |t|
    t.string "drug_genericname"
    t.string "drug_brandname"
    t.string "drug_dosage"
    t.text "drug_description"
    t.decimal "drug_price"
    t.bigint "companies_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["companies_id"], name: "index_drugs_on_companies_id"
  end

  create_table "prescription_drugs", force: :cascade do |t|
    t.bigint "drugs_id", null: false
    t.bigint "prescriptions_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["drugs_id"], name: "index_prescription_drugs_on_drugs_id"
    t.index ["prescriptions_id"], name: "index_prescription_drugs_on_prescriptions_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.date "date"
    t.string "patient_fname"
    t.string "patient_mname"
    t.string "patient_lname"
    t.string "patient_address"
    t.integer "prescribedqty"
    t.decimal "totalcost"
    t.text "description"
    t.bigint "doctors_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctors_id"], name: "index_prescriptions_on_doctors_id"
  end

  add_foreign_key "drugs", "companies", column: "companies_id"
  add_foreign_key "prescription_drugs", "drugs", column: "drugs_id"
  add_foreign_key "prescription_drugs", "prescriptions", column: "prescriptions_id"
  add_foreign_key "prescriptions", "doctors", column: "doctors_id"
end
