# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150402152054) do

  create_table "additional_fee_payments", force: true do |t|
    t.integer  "student_id"
    t.integer  "additional_fee_id"
    t.integer  "paid"
    t.date     "paid_on"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "additional_fee_payments", ["additional_fee_id"], name: "index_additional_fee_payments_on_additional_fee_id"
  add_index "additional_fee_payments", ["student_id"], name: "index_additional_fee_payments_on_student_id"

  create_table "additional_fees", force: true do |t|
    t.string   "name"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "batches", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "batches", ["course_id"], name: "index_batches_on_course_id"

  create_table "course_students", force: true do |t|
    t.integer  "course_id"
    t.integer  "student_id"
    t.integer  "batch_id"
    t.integer  "discount"
    t.integer  "total"
    t.integer  "firm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_students", ["batch_id"], name: "index_course_students_on_batch_id"
  add_index "course_students", ["course_id"], name: "index_course_students_on_course_id"
  add_index "course_students", ["firm_id"], name: "index_course_students_on_firm_id"
  add_index "course_students", ["student_id"], name: "index_course_students_on_student_id"

  create_table "courses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "firm_id"
  end

  add_index "courses", ["firm_id"], name: "index_courses_on_firm_id"

  create_table "courses_subjects", force: true do |t|
    t.integer "course_id"
    t.integer "subject_id"
  end

  add_index "courses_subjects", ["course_id"], name: "index_courses_subjects_on_course_id"
  add_index "courses_subjects", ["subject_id"], name: "index_courses_subjects_on_subject_id"

  create_table "fee_heads", force: true do |t|
    t.integer  "fee_id"
    t.string   "name"
    t.integer  "amount"
    t.boolean  "discountable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fee_heads", ["fee_id"], name: "index_fee_heads_on_fee_id"

  create_table "fees", force: true do |t|
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fees", ["course_id"], name: "index_fees_on_course_id"

  create_table "firms", force: true do |t|
    t.string   "name"
    t.string   "financial_year"
    t.string   "academic_year"
    t.boolean  "service_tax_applicable"
    t.decimal  "service_tax_rate"
    t.string   "service_tax_number"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "installments", force: true do |t|
    t.integer  "course_student_id"
    t.date     "due_on"
    t.integer  "amount"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "installments", ["course_student_id"], name: "index_installments_on_course_student_id"

  create_table "payments", force: true do |t|
    t.integer  "course_student_id"
    t.integer  "installment_id"
    t.date     "paid_on"
    t.integer  "amount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "payments", ["course_student_id"], name: "index_payments_on_course_student_id"
  add_index "payments", ["installment_id"], name: "index_payments_on_installment_id"

  create_table "standards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "name"
    t.string   "roll_no"
    t.integer  "gender"
    t.string   "school"
    t.string   "phone_1"
    t.string   "phone_2"
    t.date     "date_of_birth"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.integer  "standard_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["standard_id"], name: "index_subjects_on_standard_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
