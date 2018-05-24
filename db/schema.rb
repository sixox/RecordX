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

ActiveRecord::Schema.define(version: 2018_05_24_192634) do

  create_table "days", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "days_routins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "day_id"
    t.bigint "routin_id"
    t.index ["day_id", "routin_id"], name: "index_days_routins_on_day_id_and_routin_id"
    t.index ["day_id"], name: "index_days_routins_on_day_id"
    t.index ["routin_id", "day_id"], name: "index_days_routins_on_routin_id_and_day_id"
    t.index ["routin_id"], name: "index_days_routins_on_routin_id"
  end

  create_table "muscles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rourins_trains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "routin_id"
    t.bigint "train_id"
    t.index ["routin_id", "train_id"], name: "index_rourins_trains_on_routin_id_and_train_id"
    t.index ["routin_id"], name: "index_rourins_trains_on_routin_id"
    t.index ["train_id", "routin_id"], name: "index_rourins_trains_on_train_id_and_routin_id"
    t.index ["train_id"], name: "index_rourins_trains_on_train_id"
  end

  create_table "routins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_routins_on_user_id"
  end

  create_table "trains", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "set"
    t.integer "rep"
    t.bigint "weight_id"
    t.bigint "workout_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["weight_id"], name: "index_trains_on_weight_id"
    t.index ["workout_id"], name: "index_trains_on_workout_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "phone"
    t.string "password"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "weights", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.bigint "muscle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.index ["muscle_id"], name: "index_workouts_on_muscle_id"
  end

  add_foreign_key "days_routins", "days"
  add_foreign_key "days_routins", "routins"
  add_foreign_key "rourins_trains", "routins"
  add_foreign_key "rourins_trains", "trains"
  add_foreign_key "routins", "users"
  add_foreign_key "trains", "weights"
  add_foreign_key "trains", "workouts"
  add_foreign_key "users", "roles"
  add_foreign_key "workouts", "muscles"
end
