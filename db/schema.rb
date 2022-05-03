# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20220427192032) do

  create_table "bairros", :force => true do |t|
    t.integer  "cidade_id"
    t.string   "nome",       :limit => 32
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "ceps", :force => true do |t|
    t.integer  "bairro_id"
    t.string   "logradouro", :limit => 128
    t.string   "cep",        :limit => 9
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "cidades", :force => true do |t|
    t.string   "nome",            :limit => 32
    t.integer  "qtde_habitantes"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "estado_id"
  end

  create_table "estados", :force => true do |t|
    t.string   "nome",       :limit => 32
    t.string   "sigla",      :limit => 2
    t.integer  "pais_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "paises", :force => true do |t|
    t.string   "nome",       :limit => 32
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

end
