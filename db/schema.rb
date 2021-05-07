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

ActiveRecord::Schema.define(version: 2021_05_07_010642) do

  create_table "cities", force: :cascade do |t|
    t.string "city_name"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commentaires", force: :cascade do |t|
    t.text "comment_content"
    t.integer "gossip_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_commentaires_on_gossip_id"
    t.index ["user_id"], name: "index_commentaires_on_user_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "gossip_title_name"
    t.text "gossip_content"
    t.integer "user_id"
    t.integer "tag_id"
    t.integer "like_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["like_id"], name: "index_gossips_on_like_id"
    t.index ["tag_id"], name: "index_gossips_on_tag_id"
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "privatemessages", force: :cascade do |t|
    t.text "private_message_content"
    t.integer "sender_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_privatemessages_on_receiver_id"
    t.index ["sender_id"], name: "index_privatemessages_on_sender_id"
  end

  create_table "receivers", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_receivers_on_user_id"
  end

  create_table "senders", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_senders_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_title_name"
    t.integer "gossip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gossip_id"], name: "index_tags_on_gossip_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_first_name"
    t.string "user_last_name"
    t.text "description"
    t.string "email"
    t.integer "age"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
