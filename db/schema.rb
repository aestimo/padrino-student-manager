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

ActiveRecord::Schema.define(:version => 7) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "cost"
  end

  create_table "lesson_payments", :force => true do |t|
    t.integer  "lesson_id"
    t.integer  "payment_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lessons", :force => true do |t|
    t.integer  "course_id"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "lesson_cost"
    t.integer  "account_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "account_id"
    t.integer  "course_id"
    t.date     "payment_date"
    t.integer  "amount"
    t.string   "receipt_no"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
