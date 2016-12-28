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

ActiveRecord::Schema.define(version: 20161228072328) do

  create_table "data", force: :cascade do |t|
    t.string   "ndb_do"
    t.string   "nutr_no"
    t.decimal  "nutr_val",      precision: 10, scale: 3
    t.integer  "num_data_pts"
    t.decimal  "std_error",     precision: 8,  scale: 3
    t.string   "src_cd"
    t.string   "deriv_cd"
    t.string   "ref_ndb_no"
    t.string   "add_nutr_mark"
    t.integer  "num_studies"
    t.decimal  "min",           precision: 10, scale: 3
    t.decimal  "max",           precision: 10, scale: 3
    t.integer  "df"
    t.decimal  "low_eb",        precision: 10, scale: 3
    t.integer  "stat_cmt"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "addmod_date"
    t.decimal  "up_eb"
  end

  create_table "nut_data", force: :cascade do |t|
    t.string   "ndb_do"
    t.string   "nutr_no"
    t.decimal  "nutr_val",      precision: 10, scale: 3
    t.integer  "num_data_pts"
    t.decimal  "std_error",     precision: 8,  scale: 3
    t.string   "src_cd"
    t.string   "deriv_cd"
    t.string   "ref_ndb_no"
    t.string   "add_nutr_mark"
    t.integer  "num_studies"
    t.decimal  "min",           precision: 10, scale: 3
    t.decimal  "max",           precision: 10, scale: 3
    t.integer  "df"
    t.decimal  "low_eb",        precision: 10, scale: 3
    t.integer  "stat_cmt"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

end
