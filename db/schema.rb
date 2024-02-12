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

ActiveRecord::Schema[7.0].define(version: 2024_02_12_203634) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_club_books", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "book_club_id", null: false
    t.bigint "meeting_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_club_id"], name: "index_book_club_books_on_book_club_id"
    t.index ["book_id"], name: "index_book_club_books_on_book_id"
    t.index ["meeting_id"], name: "index_book_club_books_on_meeting_id"
  end

  create_table "book_club_subjects", force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "book_club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_club_id"], name: "index_book_club_subjects_on_book_club_id"
    t.index ["subject_id"], name: "index_book_club_subjects_on_subject_id"
  end

  create_table "book_club_users", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "book_club_id", null: false
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_club_id"], name: "index_book_club_users_on_book_club_id"
    t.index ["user_id"], name: "index_book_club_users_on_user_id"
  end

  create_table "book_clubs", force: :cascade do |t|
    t.string "name"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "author"
    t.string "title"
    t.string "google_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "date_time"
    t.string "location"
    t.bigint "book_club_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_club_id"], name: "index_meetings_on_book_club_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "category", default: 1
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_books", force: :cascade do |t|
    t.integer "status"
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_user_books_on_book_id"
    t.index ["user_id"], name: "index_user_books_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_club_books", "book_clubs"
  add_foreign_key "book_club_books", "books"
  add_foreign_key "book_club_books", "meetings"
  add_foreign_key "book_club_subjects", "book_clubs"
  add_foreign_key "book_club_subjects", "subjects"
  add_foreign_key "book_club_users", "book_clubs"
  add_foreign_key "book_club_users", "users"
  add_foreign_key "meetings", "book_clubs"
  add_foreign_key "user_books", "books"
  add_foreign_key "user_books", "users"
end
