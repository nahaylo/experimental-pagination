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

ActiveRecord::Schema[7.0].define(version: 2023_12_14_111303) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "miner_data", force: :cascade do |t|
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "index_miner_data_on_created_at"
    t.index ["created_at_brin"], name: "index_miner_data_on_created_at_brin", using: :brin
    t.index ["user_id"], name: "index_miner_data_on_user_id"
  end

  create_table "miner_two_data", id: false, force: :cascade do |t|
    t.bigserial "id", null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "index_miner_two_data_on_created_at"
    t.index ["created_at_brin"], name: "index_miner_two_data_on_created_at_brin", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_id_created_at_unique", unique: true
    t.index ["user_id"], name: "index_miner_two_data_on_user_id"
  end

  create_table "miner_two_data_2016_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_01_user_id_idx"
  end

  create_table "miner_two_data_2016_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_02_user_id_idx"
  end

  create_table "miner_two_data_2016_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_03_user_id_idx"
  end

  create_table "miner_two_data_2016_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_04_user_id_idx"
  end

  create_table "miner_two_data_2016_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_05_user_id_idx"
  end

  create_table "miner_two_data_2016_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_06_user_id_idx"
  end

  create_table "miner_two_data_2016_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_07_user_id_idx"
  end

  create_table "miner_two_data_2016_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_08_user_id_idx"
  end

  create_table "miner_two_data_2016_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_09_user_id_idx"
  end

  create_table "miner_two_data_2016_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_10_user_id_idx"
  end

  create_table "miner_two_data_2016_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_11_user_id_idx"
  end

  create_table "miner_two_data_2016_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2016_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2016_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2016_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2016_12_user_id_idx"
  end

  create_table "miner_two_data_2017_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_01_user_id_idx"
  end

  create_table "miner_two_data_2017_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_02_user_id_idx"
  end

  create_table "miner_two_data_2017_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_03_user_id_idx"
  end

  create_table "miner_two_data_2017_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_04_user_id_idx"
  end

  create_table "miner_two_data_2017_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_05_user_id_idx"
  end

  create_table "miner_two_data_2017_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_06_user_id_idx"
  end

  create_table "miner_two_data_2017_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_07_user_id_idx"
  end

  create_table "miner_two_data_2017_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_08_user_id_idx"
  end

  create_table "miner_two_data_2017_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_09_user_id_idx"
  end

  create_table "miner_two_data_2017_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_10_user_id_idx"
  end

  create_table "miner_two_data_2017_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_11_user_id_idx"
  end

  create_table "miner_two_data_2017_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2017_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2017_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2017_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2017_12_user_id_idx"
  end

  create_table "miner_two_data_2018_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_01_user_id_idx"
  end

  create_table "miner_two_data_2018_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_02_user_id_idx"
  end

  create_table "miner_two_data_2018_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_03_user_id_idx"
  end

  create_table "miner_two_data_2018_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_04_user_id_idx"
  end

  create_table "miner_two_data_2018_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_05_user_id_idx"
  end

  create_table "miner_two_data_2018_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_06_user_id_idx"
  end

  create_table "miner_two_data_2018_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_07_user_id_idx"
  end

  create_table "miner_two_data_2018_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_08_user_id_idx"
  end

  create_table "miner_two_data_2018_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_09_user_id_idx"
  end

  create_table "miner_two_data_2018_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_10_user_id_idx"
  end

  create_table "miner_two_data_2018_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_11_user_id_idx"
  end

  create_table "miner_two_data_2018_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2018_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2018_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2018_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2018_12_user_id_idx"
  end

  create_table "miner_two_data_2019_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_01_user_id_idx"
  end

  create_table "miner_two_data_2019_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_02_user_id_idx"
  end

  create_table "miner_two_data_2019_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_03_user_id_idx"
  end

  create_table "miner_two_data_2019_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_04_user_id_idx"
  end

  create_table "miner_two_data_2019_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_05_user_id_idx"
  end

  create_table "miner_two_data_2019_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_06_user_id_idx"
  end

  create_table "miner_two_data_2019_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_07_user_id_idx"
  end

  create_table "miner_two_data_2019_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_08_user_id_idx"
  end

  create_table "miner_two_data_2019_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_09_user_id_idx"
  end

  create_table "miner_two_data_2019_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_10_user_id_idx"
  end

  create_table "miner_two_data_2019_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_11_user_id_idx"
  end

  create_table "miner_two_data_2019_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2019_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2019_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2019_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2019_12_user_id_idx"
  end

  create_table "miner_two_data_2020_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_01_user_id_idx"
  end

  create_table "miner_two_data_2020_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_02_user_id_idx"
  end

  create_table "miner_two_data_2020_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_03_user_id_idx"
  end

  create_table "miner_two_data_2020_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_04_user_id_idx"
  end

  create_table "miner_two_data_2020_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_05_user_id_idx"
  end

  create_table "miner_two_data_2020_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_06_user_id_idx"
  end

  create_table "miner_two_data_2020_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_07_user_id_idx"
  end

  create_table "miner_two_data_2020_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_08_user_id_idx"
  end

  create_table "miner_two_data_2020_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_09_user_id_idx"
  end

  create_table "miner_two_data_2020_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_10_user_id_idx"
  end

  create_table "miner_two_data_2020_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_11_user_id_idx"
  end

  create_table "miner_two_data_2020_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2020_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2020_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2020_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2020_12_user_id_idx"
  end

  create_table "miner_two_data_2021_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_01_user_id_idx"
  end

  create_table "miner_two_data_2021_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_02_user_id_idx"
  end

  create_table "miner_two_data_2021_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_03_user_id_idx"
  end

  create_table "miner_two_data_2021_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_04_user_id_idx"
  end

  create_table "miner_two_data_2021_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_05_user_id_idx"
  end

  create_table "miner_two_data_2021_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_06_user_id_idx"
  end

  create_table "miner_two_data_2021_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_07_user_id_idx"
  end

  create_table "miner_two_data_2021_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_08_user_id_idx"
  end

  create_table "miner_two_data_2021_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_09_user_id_idx"
  end

  create_table "miner_two_data_2021_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_10_user_id_idx"
  end

  create_table "miner_two_data_2021_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_11_user_id_idx"
  end

  create_table "miner_two_data_2021_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2021_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2021_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2021_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2021_12_user_id_idx"
  end

  create_table "miner_two_data_2022_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_01_user_id_idx"
  end

  create_table "miner_two_data_2022_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_02_user_id_idx"
  end

  create_table "miner_two_data_2022_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_03_user_id_idx"
  end

  create_table "miner_two_data_2022_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_04_user_id_idx"
  end

  create_table "miner_two_data_2022_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_05_user_id_idx"
  end

  create_table "miner_two_data_2022_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_06_user_id_idx"
  end

  create_table "miner_two_data_2022_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_07_user_id_idx"
  end

  create_table "miner_two_data_2022_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_08_user_id_idx"
  end

  create_table "miner_two_data_2022_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_09_user_id_idx"
  end

  create_table "miner_two_data_2022_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_10_user_id_idx"
  end

  create_table "miner_two_data_2022_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_11_user_id_idx"
  end

  create_table "miner_two_data_2022_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2022_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2022_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2022_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2022_12_user_id_idx"
  end

  create_table "miner_two_data_2023_01", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_01_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_01_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_01_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_01_user_id_idx"
  end

  create_table "miner_two_data_2023_02", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_02_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_02_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_02_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_02_user_id_idx"
  end

  create_table "miner_two_data_2023_03", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_03_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_03_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_03_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_03_user_id_idx"
  end

  create_table "miner_two_data_2023_04", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_04_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_04_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_04_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_04_user_id_idx"
  end

  create_table "miner_two_data_2023_05", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_05_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_05_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_05_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_05_user_id_idx"
  end

  create_table "miner_two_data_2023_06", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_06_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_06_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_06_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_06_user_id_idx"
  end

  create_table "miner_two_data_2023_07", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_07_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_07_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_07_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_07_user_id_idx"
  end

  create_table "miner_two_data_2023_08", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_08_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_08_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_08_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_08_user_id_idx"
  end

  create_table "miner_two_data_2023_09", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_09_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_09_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_09_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_09_user_id_idx"
  end

  create_table "miner_two_data_2023_10", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_10_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_10_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_10_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_10_user_id_idx"
  end

  create_table "miner_two_data_2023_11", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_11_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_11_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_11_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_11_user_id_idx"
  end

  create_table "miner_two_data_2023_12", id: false, force: :cascade do |t|
    t.bigint "id", default: -> { "nextval('miner_two_data_id_seq'::regclass)" }, null: false
    t.string "name"
    t.integer "fan_percentage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at_brin", null: false
    t.integer "user_id", null: false
    t.index ["created_at"], name: "miner_two_data_2023_12_created_at_idx"
    t.index ["created_at_brin"], name: "miner_two_data_2023_12_created_at_brin_idx", using: :brin
    t.index ["id", "created_at"], name: "miner_two_data_2023_12_id_created_at_key", unique: true
    t.index ["user_id"], name: "miner_two_data_2023_12_user_id_idx"
  end

end
