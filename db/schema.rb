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

ActiveRecord::Schema.define(version: 20170302134849) do

  create_table "coin_price_data", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "price_id"
    t.integer  "coin_id"
    t.decimal  "last",         precision: 24, scale: 8
    t.decimal  "lowest_ask",   precision: 24, scale: 8
    t.decimal  "highest_bid",  precision: 24, scale: 8
    t.decimal  "base_volume",  precision: 24, scale: 8
    t.decimal  "quote_volume", precision: 24, scale: 8
    t.decimal  "highest_day",  precision: 24, scale: 8
    t.decimal  "lowest_day",   precision: 24, scale: 8
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["coin_id"], name: "index_coin_price_data_on_coin_id", using: :btree
    t.index ["price_id"], name: "index_coin_price_data_on_price_id", using: :btree
  end

  create_table "coin_prices", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "parsed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parsed_at"], name: "index_coin_prices_on_parsed_at", using: :btree
  end

  create_table "coins", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
