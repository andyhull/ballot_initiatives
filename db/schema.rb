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

ActiveRecord::Schema.define(:version => 20130524204810) do

  create_table "consultant_services", :force => true do |t|
    t.integer  "total_promised"
    t.integer  "total_received"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "initiative_id"
    t.integer  "firm_id"
  end

  create_table "firms", :force => true do |t|
    t.string   "name"
    t.text     "serivces"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "initiatives", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "status"
    t.string   "year"
    t.integer  "contributions"
    t.integer  "expenditures"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "initiativetype"
  end

  create_table "issues", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "initiative_id"
  end

end
