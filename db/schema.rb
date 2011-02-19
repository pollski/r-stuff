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

ActiveRecord::Schema.define(:version => 20110209011800) do

  create_table "comments", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "item_id",    :null => false
    t.string   "comment",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "extrainfos", :force => true do |t|
    t.integer  "user_id",      :null => false
    t.string   "address_one"
    t.string   "address_two"
    t.string   "website_link"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "city"
  end

  create_table "followtags", :force => true do |t|
    t.integer  "tag_id",     :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "followusers", :force => true do |t|
    t.integer  "user_id",          :null => false
    t.integer  "followed_user_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemimages", :force => true do |t|
    t.integer  "item_id",    :null => false
    t.string   "source",     :null => false
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "title",      :null => false
    t.string   "desc"
    t.string   "sale_link"
    t.boolean  "for_trade"
    t.boolean  "for_sale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itemtags", :force => true do |t|
    t.integer  "item_id",    :null => false
    t.integer  "tag_id",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "sender_id",  :null => false
    t.string   "subject"
    t.string   "body"
    t.boolean  "read"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "user_id"
    t.string   "trackback_url"
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "userimages", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "source",     :null => false
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                      :null => false
    t.string   "first_name",                                 :null => false
    t.string   "middle_name"
    t.string   "last_name",                                  :null => false
    t.string   "password"
    t.boolean  "facebook_check",          :default => false, :null => false
    t.boolean  "corporate_user",          :default => false, :null => false
    t.boolean  "public_setting",          :default => false, :null => false
    t.string   "desc"
    t.datetime "last_notification_check"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "zipcode"
  end

end
