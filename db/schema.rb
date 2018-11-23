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

ActiveRecord::Schema.define(version: 2018_11_23_103350) do

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.string "referencia"
    t.integer "fornecedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_emails_on_fornecedor_id"
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "cidade"
    t.string "endereco"
    t.string "bairro"
    t.string "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.float "quantidade"
    t.float "valor"
    t.integer "produto_id"
    t.integer "pedido_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pedido_id"], name: "index_items_on_pedido_id"
    t.index ["produto_id"], name: "index_items_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.datetime "datahora"
    t.string "notafiscal"
    t.float "valorfrete"
    t.float "desconto"
    t.float "valortotal"
    t.integer "transportadora_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transportadora_id"], name: "index_pedidos_on_transportadora_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.integer "fornecedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_produtos_on_fornecedor_id"
  end

  create_table "telefones", force: :cascade do |t|
    t.string "ddd"
    t.string "numero"
    t.string "referencia"
    t.integer "fornecedor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fornecedor_id"], name: "index_telefones_on_fornecedor_id"
  end

  create_table "transportadoras", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
