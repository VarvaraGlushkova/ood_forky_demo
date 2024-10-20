# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_20_182813) do
  create_table "chapters", force: :cascade do |t|
    t.string "title"
    t.text "chapter_body"
    t.integer "place"
    t.boolean "is_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "story_id"
    t.index ["story_id"], name: "index_chapters_on_story_id"
  end

  create_table "forks", force: :cascade do |t|
    t.integer "Story_id", null: false
    t.integer "Chapter_id", null: false
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Chapter_id"], name: "index_forks_on_Chapter_id"
    t.index ["Story_id"], name: "index_forks_on_Story_id"
  end

  create_table "stories", force: :cascade do |t|
    t.string "title"
    t.string "cover"
    t.string "annotation"
    t.boolean "is_public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.boolean "is_admin"
    t.string "user_name"
    t.string "bio"
    t.string "avatar"
    t.string "mail"
    t.boolean "is_mail_public"
    t.string "phone"
    t.boolean "is_phone_piblic"
    t.integer "Chapter_id", null: false
    t.integer "Story_id", null: false
    t.integer "Collection_id", null: false
    t.integer "Subs_id", null: false
    t.integer "Like_id", null: false
    t.integer "Comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Chapter_id"], name: "index_users_on_Chapter_id"
    t.index ["Collection_id"], name: "index_users_on_Collection_id"
    t.index ["Comment_id"], name: "index_users_on_Comment_id"
    t.index ["Like_id"], name: "index_users_on_Like_id"
    t.index ["Story_id"], name: "index_users_on_Story_id"
    t.index ["Subs_id"], name: "index_users_on_Subs_id"
  end

  add_foreign_key "chapters", "stories"
  add_foreign_key "forks", "Chapters"
  add_foreign_key "forks", "Stories"
  add_foreign_key "users", "Chapters"
  add_foreign_key "users", "Collections"
  add_foreign_key "users", "Comments"
  add_foreign_key "users", "Likes"
  add_foreign_key "users", "Stories"
  add_foreign_key "users", "Subs", column: "Subs_id"
end
