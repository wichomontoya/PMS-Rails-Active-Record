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

ActiveRecord::Schema.define(version: 20160625010240) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_projects", id: false, force: :cascade do |t|
    t.integer "employee_id", null: false
    t.integer "project_id",  null: false
  end

  add_index "employees_projects", ["employee_id", "project_id"], name: "index_employees_projects_on_employee_id_and_project_id", using: :btree
  add_index "employees_projects", ["project_id", "employee_id"], name: "index_employees_projects_on_project_id_and_employee_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "code_name"
    t.date     "due_date"
    t.decimal  "budget"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
