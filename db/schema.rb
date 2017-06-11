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

ActiveRecord::Schema.define(version: 20170611162436) do

  create_table "cities", force: :cascade do |t|
    t.string "nome"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "complaint_addresses", force: :cascade do |t|
    t.string "nome"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["state_id"], name: "index_complaint_addresses_on_state_id"
  end

  create_table "complaints", force: :cascade do |t|
    t.string "nome"
    t.text "detalhe"
    t.float "valor_inicial_estimado"
    t.date "data_reclamacao"
    t.date "data_inicio_obra"
    t.date "data_fim_obra"
    t.string "numero_contrato"
    t.string "geolocalizacao"
    t.boolean "anonimo"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_complaints_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "mensagem"
    t.integer "user_id"
    t.integer "complaint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["complaint_id"], name: "index_messages_on_complaint_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "neighborhoods", force: :cascade do |t|
    t.string "nome"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_neighborhoods_on_city_id"
  end

  create_table "public_places", force: :cascade do |t|
    t.string "nome"
    t.integer "neighborhood_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["neighborhood_id"], name: "index_public_places_on_neighborhood_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "nome"
    t.string "sigla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "sexo"
    t.date "data_nascimento"
    t.string "telefone"
    t.string "email"
    t.integer "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

end
