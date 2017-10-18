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

ActiveRecord::Schema.define(version: 20170506103820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "addresses", force: :cascade do |t|
    t.string   "name"
    t.string   "street1"
    t.string   "street2"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.boolean  "main"
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "body_woods", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.string   "identifier"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.integer  "number"
  end

  create_table "colors", force: :cascade do |t|
    t.string   "name"
    t.string   "identifier"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  create_table "dexterities", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "number"
  end

  create_table "finishes", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
  end

  create_table "fret_woods", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.string   "identifier"
  end

  create_table "guitars", force: :cascade do |t|
    t.integer  "body_wood_id"
    t.integer  "user_id"
    t.integer  "shape_id"
    t.integer  "neck_wood_id"
    t.integer  "fret_wood_id"
    t.integer  "head_shape_id"
    t.integer  "pickup_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "name"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "dexterity_id"
    t.integer  "finish_id"
    t.integer  "price_cents",    default: 0,     null: false
    t.string   "price_currency", default: "EUR", null: false
    t.string   "sku"
    t.integer  "pickguard_id"
    t.integer  "color_id"
    t.index ["body_wood_id"], name: "index_guitars_on_body_wood_id", using: :btree
    t.index ["category_id"], name: "index_guitars_on_category_id", using: :btree
    t.index ["color_id"], name: "index_guitars_on_color_id", using: :btree
    t.index ["dexterity_id"], name: "index_guitars_on_dexterity_id", using: :btree
    t.index ["finish_id"], name: "index_guitars_on_finish_id", using: :btree
    t.index ["fret_wood_id"], name: "index_guitars_on_fret_wood_id", using: :btree
    t.index ["head_shape_id"], name: "index_guitars_on_head_shape_id", using: :btree
    t.index ["neck_wood_id"], name: "index_guitars_on_neck_wood_id", using: :btree
    t.index ["pickguard_id"], name: "index_guitars_on_pickguard_id", using: :btree
    t.index ["pickup_id"], name: "index_guitars_on_pickup_id", using: :btree
    t.index ["shape_id"], name: "index_guitars_on_shape_id", using: :btree
    t.index ["user_id"], name: "index_guitars_on_user_id", using: :btree
  end

  create_table "head_shapes", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
  end

  create_table "neck_woods", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "delivery_address"
    t.integer  "user_id"
    t.integer  "guitar_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "state"
    t.string   "guitar_sku"
    t.json     "payment"
    t.string   "zip_code"
    t.string   "city"
    t.string   "country"
    t.integer  "price_cents",       default: 0,     null: false
    t.string   "price_currency",    default: "EUR", null: false
    t.string   "number"
    t.string   "card_brand"
    t.string   "card_country"
    t.integer  "card_exp_m"
    t.integer  "card_exp_y"
    t.string   "card_last"
    t.string   "delivery_address2"
    t.index ["guitar_id"], name: "index_orders_on_guitar_id", using: :btree
    t.index ["user_id"], name: "index_orders_on_user_id", using: :btree
  end

  create_table "pickguards", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.string   "identifier"
  end

  create_table "pickups", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
    t.string   "identifier"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "star"
    t.string   "comment"
    t.integer  "guitar_id"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "reviewer_name"
    t.index ["guitar_id"], name: "index_reviews_on_guitar_id", using: :btree
    t.index ["user_id"], name: "index_reviews_on_user_id", using: :btree
  end

  create_table "shapes", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "price_cents", default: 0, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.string   "username"
    t.boolean  "admin",                  default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.string   "votable_type"
    t.integer  "votable_id"
    t.string   "voter_type"
    t.integer  "voter_id"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "guitars", "body_woods"
  add_foreign_key "guitars", "categories"
  add_foreign_key "guitars", "colors"
  add_foreign_key "guitars", "dexterities"
  add_foreign_key "guitars", "finishes"
  add_foreign_key "guitars", "fret_woods"
  add_foreign_key "guitars", "head_shapes"
  add_foreign_key "guitars", "neck_woods"
  add_foreign_key "guitars", "pickguards"
  add_foreign_key "guitars", "pickups"
  add_foreign_key "guitars", "shapes"
  add_foreign_key "guitars", "users"
  add_foreign_key "orders", "guitars"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "guitars"
  add_foreign_key "reviews", "users"
end
