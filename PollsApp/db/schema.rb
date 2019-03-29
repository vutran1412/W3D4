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

ActiveRecord::Schema.define(version: 2019_03_29_002600) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_choices", force: :cascade do |t|
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "answer_choice", null: false
    t.text "answer_choice_name", null: false
    t.index ["question_id"], name: "index_answer_choices_on_question_id"
  end

  create_table "polls", force: :cascade do |t|
    t.integer "author", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "poll", null: false
    t.index ["author"], name: "index_polls_on_author"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "poll_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "question", null: false
    t.index ["poll_id"], name: "index_questions_on_poll_id"
  end

  create_table "responses", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "answer_choice_id", null: false
    t.text "response"
    t.index ["answer_choice_id"], name: "index_responses_on_answer_choice_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
  end

end
