ActiveRecord::Schema.define(version: 2021_12_09_202508) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formations", force: :cascade do |t|
    t.string "libelle"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_formations_on_user_id"
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plannings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "salle_id"
    t.bigint "formation_id"
    t.bigint "material_id"
    t.datetime "date_begin", null: false
    t.datetime "date_end", null: false
    t.index ["formation_id"], name: "index_plannings_on_formation_id"
    t.index ["material_id"], name: "index_plannings_on_material_id"
    t.index ["salle_id"], name: "index_plannings_on_salle_id"
    t.index ["user_id"], name: "index_plannings_on_user_id"
  end

  create_table "salles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.string "lastname"
    t.string "firstname"
    t.boolean "is_profrespo", default: false
    t.boolean "is_prof", default: true
    t.string "telephone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "formations", "users"
  add_foreign_key "plannings", "formations"
  add_foreign_key "plannings", "materials"
  add_foreign_key "plannings", "salles"
  add_foreign_key "plannings", "users"
end
