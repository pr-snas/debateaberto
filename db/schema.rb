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

ActiveRecord::Schema.define(:version => 20120719065300) do

  create_table "canais", :force => true do |t|
    t.string   "path"
    t.string   "nome"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "usuario_id"
  end

  create_table "mensagens", :force => true do |t|
    t.text     "content"
    t.integer  "usuario_id"
    t.integer  "canal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "perfils", :force => true do |t|
    t.integer  "usuario_id"
    t.string   "nome"
    t.string   "estado"
    t.string   "cidade"
    t.string   "bairro"
    t.text     "descricao"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "perfils", ["usuario_id"], :name => "index_perfils_on_usuario_id"

  create_table "streammings", :force => true do |t|
    t.string   "uri"
    t.integer  "canal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "streammings", ["canal_id"], :name => "index_streammings_on_canal_id"

  create_table "twitters", :force => true do |t|
    t.string   "titulo"
    t.string   "busca"
    t.string   "altura"
    t.integer  "canal_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "descricao"
  end

  add_index "twitters", ["canal_id"], :name => "index_twitters_on_canal_id"

  create_table "usuarios", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "papel"
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
