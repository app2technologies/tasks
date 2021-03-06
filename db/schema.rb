# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 7) do

  create_table "task_notes", :force => true do |t|
    t.integer  "task_id"
    t.string   "note",       :limit => 1024, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", :force => true do |t|
    t.string   "name",        :limit => 8192,                    :null => false
    t.boolean  "req",                         :default => false, :null => false
    t.boolean  "dev",                         :default => false, :null => false
    t.boolean  "qa",                          :default => false, :null => false
    t.boolean  "prod",                        :default => false, :null => false
    t.boolean  "hide",                        :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "assigned_to", :limit => 16
    t.integer  "parent_id"
    t.boolean  "prod_review",                 :default => false, :null => false
    t.boolean  "bug",                         :default => false, :null => false
  end

end
