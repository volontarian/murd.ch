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

ActiveRecord::Schema.define(version: 20150327160834) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",   limit: 4,   null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "page_module_collections", force: :cascade do |t|
    t.string   "slug",       limit: 255
    t.string   "slug_stub",  limit: 255
    t.string   "title",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_module_collections", ["slug"], name: "index_page_module_collections_on_slug", unique: true, using: :btree
  add_index "page_module_collections", ["slug_stub"], name: "index_page_module_collections_on_slug_stub", unique: true, using: :btree

  create_table "page_module_collections_modules", force: :cascade do |t|
    t.integer  "collection_id", limit: 4
    t.integer  "position",      limit: 4
    t.integer  "module_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_module_collections_modules", ["collection_id", "position", "module_id"], name: "uniq_page_module_collections_module", unique: true, using: :btree

  create_table "page_modules", force: :cascade do |t|
    t.string   "slug",            limit: 255
    t.string   "slug_stub",       limit: 255
    t.string   "title",           limit: 255
    t.string   "description",     limit: 255
    t.string   "partial_path",    limit: 255
    t.text     "content",         limit: 65535
    t.text     "data",            limit: 16777215
    t.string   "moduleable_type", limit: 255
    t.integer  "moduleable_id",   limit: 4
    t.datetime "published_from"
    t.datetime "published_until"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_modules", ["moduleable_type", "moduleable_id"], name: "index_page_modules_on_moduleable_type_and_moduleable_id", using: :btree
  add_index "page_modules", ["published_from"], name: "index_page_modules_on_published_from", using: :btree
  add_index "page_modules", ["published_until"], name: "index_page_modules_on_published_until", using: :btree
  add_index "page_modules", ["slug"], name: "index_page_modules_on_slug", unique: true, using: :btree
  add_index "page_modules", ["slug_stub"], name: "index_page_modules_on_slug_stub", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "slug",       limit: 255
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.text     "data",       limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "posts", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.string   "title",        limit: 255
    t.string   "slug",         limit: 255
    t.string   "summary",      limit: 255
    t.text     "body",         limit: 65535
    t.boolean  "published",    limit: 1,     default: false
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["published"], name: "index_posts_on_published", using: :btree
  add_index "posts", ["slug"], name: "index_posts_on_slug", unique: true, using: :btree

  create_table "settings", force: :cascade do |t|
    t.string   "var",        limit: 255,   null: false
    t.text     "value",      limit: 65535
    t.integer  "thing_id",   limit: 4
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "slug",                   limit: 255
    t.string   "password",               limit: 255
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.integer  "failed_attempts",        limit: 4,   default: 0,  null: false
    t.string   "unlock_token",           limit: 255
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["slug"], name: "index_users_on_slug", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
