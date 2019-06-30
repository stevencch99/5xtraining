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

ActiveRecord::Schema.define(version: 2019_06_30_114219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags_tasks", id: false, force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "task_id"
    t.index ["tag_id"], name: "index_tags_tasks_on_tag_id"
    t.index ["task_id"], name: "index_tags_tasks_on_task_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "priority"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "state"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["end_time"], name: "index_tasks_on_end_time"
    t.index ["priority"], name: "index_tasks_on_priority"
    t.index ["start_time"], name: "index_tasks_on_start_time"
    t.index ["state"], name: "index_tasks_on_state"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "tel"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "tags_tasks", "tags"
  add_foreign_key "tags_tasks", "tasks"
  add_foreign_key "tasks", "users"
end
