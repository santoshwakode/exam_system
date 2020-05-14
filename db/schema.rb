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

ActiveRecord::Schema.define(version: 20200514110048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exam_details", force: :cascade do |t|
    t.integer  "exam_id"
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exam_formats", force: :cascade do |t|
    t.string   "question"
    t.string   "question_type"
    t.integer  "subject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exams", force: :cascade do |t|
    t.datetime "start_duration"
    t.datetime "end_duration"
    t.integer  "exam_format_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.integer  "teacher_id"
    t.integer  "subject_id"
    t.float    "fees"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test_details", force: :cascade do |t|
    t.integer  "exam_format_id"
    t.text     "answer"
    t.integer  "exam_detail_id"
    t.integer  "score"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
