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

ActiveRecord::Schema.define(version: 20151206082444) do

  create_table "adminusers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "contact"
    t.string   "password"
    t.string   "passwordconfirmation"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "applicants", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "contact"
    t.decimal  "gpa"
    t.integer  "credit_hours"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.date     "date_of_birth"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "applications", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "applicant_id"
    t.string   "status"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "start_at"
    t.datetime "end_at"
    t.string   "allDay"
    t.string   "user_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "internship_applications", force: :cascade do |t|
    t.integer  "job_id"
    t.integer  "applicant_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "application_id"
    t.text     "answer1"
    t.text     "answer2"
    t.text     "answer3"
    t.text     "answer4"
    t.string   "worksample_file_name"
    t.string   "worksample_content_type"
    t.integer  "worksample_file_size"
    t.datetime "worksample_updated_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "qualifications"
    t.date     "postedon"
    t.date     "deadline"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "adminuser_id"
    t.string   "jobtype"
  end

  create_table "paidemployment_applications", force: :cascade do |t|
    t.integer  "applicant_id"
    t.integer  "job_id"
    t.integer  "application_id"
    t.text     "referral_source"
    t.text     "preferred_contact"
    t.date     "availability_date"
    t.integer  "desired_salary"
    t.boolean  "transportation"
    t.boolean  "over_eighteen"
    t.boolean  "work_proof"
    t.boolean  "controlledsubstance_test"
    t.text     "a1"
    t.text     "a2"
    t.text     "a3"
    t.text     "a4"
    t.text     "a5"
    t.text     "a6"
    t.text     "a7"
    t.text     "a8"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "coverletter_file_name"
    t.string   "coverletter_content_type"
    t.integer  "coverletter_file_size"
    t.datetime "coverletter_updated_at"
    t.text     "experience"
    t.text     "education"
    t.text     "references"
  end

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.string   "job_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "job_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "firstname"
    t.string   "lastname"
    t.string   "contact"
    t.boolean  "admin"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "volunteer_applications", force: :cascade do |t|
    t.string   "jobtitle"
    t.string   "employername"
    t.text     "employeraddress"
    t.string   "employerphone"
    t.string   "employerfax"
    t.integer  "hoursavailable"
    t.text     "a1"
    t.text     "a2"
    t.text     "a3"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "Applicant_id"
    t.integer  "Application_id"
    t.integer  "Job_id"
    t.text     "references"
  end

  add_index "volunteer_applications", ["Applicant_id"], name: "index_volunteer_applications_on_Applicant_id"
  add_index "volunteer_applications", ["Application_id"], name: "index_volunteer_applications_on_Application_id"
  add_index "volunteer_applications", ["Job_id"], name: "index_volunteer_applications_on_Job_id"

end
