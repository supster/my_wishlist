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

ActiveRecord::Schema.define(:version => 20130323022552) do

  create_table "favorites", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "favorites", ["user_id"], :name => "index_favorites_on_user_id"
  add_index "favorites", ["vendor_id"], :name => "index_favorites_on_vendor_id"

  create_table "products", :force => true do |t|
    t.integer  "vendor_id"
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "products", ["vendor_id"], :name => "index_products_on_vendor_id"

  create_table "reviews", :force => true do |t|
    t.integer  "user_id"
    t.integer  "vendor_id"
    t.integer  "review_score"
    t.string   "review_text"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "reviews", ["vendor_id"], :name => "index_reviews_on_vendor_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.boolean  "admin",           :default => false
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

  create_table "vendors", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "street_address"
    t.string   "city"
    t.string   "state_abbr"
    t.string   "zip_code"
  end

  create_table "wishlists", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "wishlists", ["user_id"], :name => "index_wishlists_on_user_id"

end
