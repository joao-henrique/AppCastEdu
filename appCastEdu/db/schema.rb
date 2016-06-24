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

ActiveRecord::Schema.define(version: 20160530025314) do

  create_table "abstract_registers", force: :cascade do |t|
    t.string   "register"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "tittle"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "children_containers", id: false, force: :cascade do |t|
    t.integer "child_id"
    t.integer "container_id"
  end

  add_index "children_containers", ["child_id"], name: "index_children_containers_on_child_id"
  add_index "children_containers", ["container_id", "child_id"], name: "index_children_containers_on_container_id_and_child_id", unique: true

  create_table "comments", force: :cascade do |t|
    t.string   "tittle"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entity_colabs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", force: :cascade do |t|
    t.string   "tittle"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "room_id"
  end

  add_index "forums", ["room_id"], name: "index_forums_on_room_id"

  create_table "logins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_emails", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "register_facebooks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "tittle"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "rooms", ["user_id"], name: "index_rooms_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "token"
    t.string   "idRedeSocial"
    t.string   "password_reset_key"
    t.datetime "password_reset_sent_at"
    t.integer  "age"
    t.string   "sex"
    t.integer  "rooms_id"
  end

  add_index "users", ["rooms_id"], name: "index_users_on_rooms_id"

end
