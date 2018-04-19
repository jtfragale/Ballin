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

ActiveRecord::Schema.define(version: 20180417195221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.string "category"
    t.integer "cost"
    t.bigint "month_id"
    t.index ["month_id"], name: "index_expenses_on_month_id"
  end

  create_table "months", force: :cascade do |t|
    t.string "name"
    t.integer "total"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_months_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

  add_foreign_key "expenses", "months"
  add_foreign_key "months", "users"
end
