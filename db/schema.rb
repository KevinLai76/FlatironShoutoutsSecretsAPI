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

ActiveRecord::Schema.define(version: 9) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "secret_comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "secret_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secret_id"], name: "index_secret_comments_on_secret_id"
    t.index ["user_id"], name: "index_secret_comments_on_user_id"
  end

  create_table "secret_dislikes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "secret_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secret_id"], name: "index_secret_dislikes_on_secret_id"
    t.index ["user_id"], name: "index_secret_dislikes_on_user_id"
  end

  create_table "secret_likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "secret_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["secret_id"], name: "index_secret_likes_on_secret_id"
    t.index ["user_id"], name: "index_secret_likes_on_user_id"
  end

  create_table "secrets", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_secrets_on_user_id"
  end

  create_table "shoutout_comments", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.bigint "shoutout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoutout_id"], name: "index_shoutout_comments_on_shoutout_id"
    t.index ["user_id"], name: "index_shoutout_comments_on_user_id"
  end

  create_table "shoutout_dislikes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "shoutout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoutout_id"], name: "index_shoutout_dislikes_on_shoutout_id"
    t.index ["user_id"], name: "index_shoutout_dislikes_on_user_id"
  end

  create_table "shoutout_likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "shoutout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shoutout_id"], name: "index_shoutout_likes_on_shoutout_id"
    t.index ["user_id"], name: "index_shoutout_likes_on_user_id"
  end

  create_table "shoutouts", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shoutouts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "secret_comments", "secrets"
  add_foreign_key "secret_comments", "users"
  add_foreign_key "secret_dislikes", "secrets"
  add_foreign_key "secret_dislikes", "users"
  add_foreign_key "secret_likes", "secrets"
  add_foreign_key "secret_likes", "users"
  add_foreign_key "secrets", "users"
  add_foreign_key "shoutout_comments", "shoutouts"
  add_foreign_key "shoutout_comments", "users"
  add_foreign_key "shoutout_dislikes", "shoutouts"
  add_foreign_key "shoutout_dislikes", "users"
  add_foreign_key "shoutout_likes", "shoutouts"
  add_foreign_key "shoutout_likes", "users"
  add_foreign_key "shoutouts", "users"
end
