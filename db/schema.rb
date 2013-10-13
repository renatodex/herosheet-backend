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

ActiveRecord::Schema.define(:version => 20131011020858) do

  create_table "team_hero_powers", :force => true do |t|
    t.integer  "TeamHero_id"
    t.string   "power_name"
    t.string   "power_value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "team_hero_powers", ["TeamHero_id"], :name => "index_team_hero_powers_on_TeamHero_id"

  create_table "team_heros", :force => true do |t|
    t.integer  "Team_id"
    t.string   "name"
    t.integer  "total_hit_points"
    t.integer  "total_healing_surges"
    t.integer  "actual_hit_points"
    t.integer  "actual_healing_surges"
    t.integer  "action_points"
    t.integer  "temporary_hit_points"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  add_index "team_heros", ["Team_id"], :name => "index_team_heros_on_Team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
