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

ActiveRecord::Schema.define(version: 20181107053903) do

  create_table "comments", force: true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friends", force: true do |t|
    t.integer  "user_id"
    t.integer  "user_id_rq"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "message"
  end

  create_table "ingredients", force: true do |t|
    t.integer  "user_id"
    t.integer  "check_box"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "likes", force: true do |t|
    t.integer  "user_id"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "post_details", force: true do |t|
    t.integer  "post_id"
    t.string   "image"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "post_details", ["post_id", "created_at"], name: "index_post_details_on_post_id_and_created_at"

  create_table "posts", force: true do |t|
    t.text     "title"
    t.integer  "user_id"
    t.text     "main_content"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["user_id", "created_at"], name: "index_posts_on_user_id_and_created_at"

  create_table "recipes", force: true do |t|
    t.string   "ingredient"
    t.string   "amount"
    t.string   "prepare"
    t.string   "breakdown"
    t.string   "menu_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sentences", force: true do |t|
    t.text     "proverb"
    t.string   "speaker"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.integer  "user_id"
    t.string   "category"
    t.integer  "question_1"
    t.integer  "question_2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "image"
    t.text     "message"
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end