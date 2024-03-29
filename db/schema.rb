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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120414014247) do

  create_table "courses", :force => true do |t|
    t.integer  "department_id"
    t.integer  "number"
    t.string   "title"
    t.integer  "units"
    t.integer  "difficulty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degrees", :force => true do |t|
    t.string   "name"
    t.integer  "units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departments", :force => true do |t|
    t.string   "acronym"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "planners", :force => true do |t|
    t.integer  "user_id"
    t.integer  "semester_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", :force => true do |t|
    t.integer  "user_id"
    t.integer  "semester_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "required_courses", :force => true do |t|
    t.integer  "requirement_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "semesters", :force => true do |t|
    t.string   "semester"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "specific_requirements", :force => true do |t|
    t.integer  "degree_id"
    t.integer  "requirement_id"
    t.integer  "units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "type"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
