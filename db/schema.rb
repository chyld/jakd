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

ActiveRecord::Schema.define(:version => 20121201185154) do

  create_table "games", :force => true do |t|
    t.boolean  "is_in_progress", :default => true
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
  end

  create_table "players", :force => true do |t|
    t.integer  "game_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "avatar"
    t.decimal  "balance",         :default => 1000.0
    t.integer  "games_won",       :default => 0
    t.integer  "games_lost",      :default => 0
    t.decimal  "amount_won",      :default => 0.0
    t.decimal  "amount_lost",     :default => 0.0
    t.boolean  "logged_in",       :default => false
    t.integer  "player_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
