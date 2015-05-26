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

ActiveRecord::Schema.define(version: 20150525055510) do

  create_table "children", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "age"
    t.string   "grade"
    t.string   "gender"
    t.text     "allergies"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "family_id"
  end

  create_table "families", force: true do |t|
    t.string   "familyname"
    t.string   "email"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "parents", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "phone"
    t.string   "active"
    t.string   "involvement"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "family_id"
  end

  create_table "regs", force: true do |t|
    t.string  "student"
    t.string  "firstpri"
    t.string  "secondpri"
    t.string  "thirdpri"
    t.integer "child_id"
    t.string  "firstalt"
    t.string  "secondalt"
    t.string  "thirdalt"
  end

  create_table "subjects", force: true do |t|
    t.string "subjectname"
    t.string "grade"
    t.string "hour"
    t.string "cost"
    t.string "teacher"
    t.text   "description"
  end

end
