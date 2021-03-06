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

ActiveRecord::Schema.define(version: 20140411183001) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "content"
    t.string   "excerpt"
    t.string   "seo_title"
    t.string   "seo_desc"
    t.string   "seo_keys"
    t.integer  "parent_id",  default: 0
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
  end

  add_index "pages", ["parent_id"], name: "index_pages_on_parent_id"
  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true

  create_table "project_images", force: true do |t|
    t.integer  "project_id"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_images", ["project_id"], name: "index_project_images_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "slug"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "uploaded_images", force: true do |t|
    t.string "file"
    t.string "image"
    t.string "thumb"
  end

end
