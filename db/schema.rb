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

ActiveRecord::Schema.define(:version => 20130607003308) do

  create_table "notes", :force => true do |t|
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "recipient_user_id"
  end

  add_index "notes", ["user_id"], :name => "index_notes_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "born"
    t.string   "live_now"
    t.text     "live_past"
    t.text     "school"
    t.text     "career"
    t.text     "hobbies"
    t.text     "misc"
    t.string   "email_address"
    t.string   "password"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.binary   "image1"
    t.string   "password_confirmation"
    t.binary   "image3"
    t.binary   "image2"
    t.string   "encrypted_password"
    t.string   "salt"
    t.string   "avatar1_file_name"
    t.string   "avatar1_content_type"
    t.integer  "avatar1_file_size"
    t.datetime "avatar1_updated_at"
    t.string   "avatar2_file_name"
    t.string   "avatar2_content_type"
    t.integer  "avatar2_file_size"
    t.datetime "avatar2_updated_at"
    t.string   "avatar3_file_name"
    t.string   "avatar3_content_type"
    t.integer  "avatar3_file_size"
    t.datetime "avatar3_updated_at"
  end

end
