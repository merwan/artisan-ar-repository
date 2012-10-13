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

ActiveRecord::Schema.define(:version => 20120913192339) do

  create_table "changes", :force => true do |t|
    t.string   "type"
    t.integer  "source_id"
    t.integer  "user_id"
    t.string   "event"
    t.text     "original_fields"
    t.text     "changed_fields"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "days", :force => true do |t|
    t.integer  "user_id"
    t.integer  "iteration_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "future_users", :force => true do |t|
    t.string  "email"
    t.integer "project_id"
  end

  create_table "iterations", :force => true do |t|
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "finish_date"
    t.boolean  "complete",                                                      :default => false, :null => false
    t.datetime "completed_at"
    t.date     "start_date"
    t.integer  "number"
    t.decimal  "committed_points_at_completion", :precision => 5,  :scale => 2
    t.decimal  "committed_points",               :precision => 10, :scale => 0
  end

  create_table "members", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.boolean  "owner",      :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "creator_id"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["project_id"], :name => "index_pages_on_project_id"

  create_table "project_configurations", :force => true do |t|
    t.integer  "project_id"
    t.string   "api_source"
    t.string   "api_key"
    t.boolean  "import_iterations"
    t.string   "estimate_mode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "story_completed_email_list", :default => "--- []\n"
    t.string   "story_assigned_email_list",  :default => "--- []\n"
  end

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "foreign_id"
    t.integer  "life_cycle"
    t.boolean  "archived",    :default => false
    t.string   "api_key"
  end

  create_table "settings", :force => true do |t|
    t.string   "var",                      :null => false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings", ["thing_type", "thing_id", "var"], :name => "index_settings_on_thing_type_and_thing_id_and_var", :unique => true

  create_table "stories", :force => true do |t|
    t.string   "name"
    t.integer  "optimistic"
    t.integer  "pessimistic"
    t.integer  "realistic"
    t.integer  "iteration_id"
    t.boolean  "complete"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "foreign_id"
    t.text     "acceptance_criteria"
    t.integer  "position"
    t.string   "label"
    t.boolean  "deleted",             :default => false
    t.integer  "split_from"
    t.integer  "assigned_user_id"
    t.integer  "creator_id"
    t.integer  "number"
    t.boolean  "nonbillable",         :default => false, :null => false
    t.datetime "completed_at"
  end

  create_table "stories_tags", :id => false, :force => true do |t|
    t.integer "story_id"
    t.integer "tag_id"
  end

  create_table "story_assigned_emails", :force => true do |t|
    t.string  "email"
    t.integer "project_configuration_id"
  end

  create_table "story_completed_emails", :force => true do |t|
    t.string  "email"
    t.integer "project_configuration_id"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context"
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"
  add_index "taggings", ["taggable_id", "taggable_type", "context"], :name => "index_taggings_on_taggable_id_and_taggable_type_and_context"

  create_table "tags", :force => true do |t|
    t.string "name"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "encrypted_password"
    t.string   "password_salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.integer  "project_id"
    t.string   "full_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "versions", :force => true do |t|
    t.string   "item_type",         :null => false
    t.integer  "item_id",           :null => false
    t.string   "event",             :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.integer  "project_id"
    t.string   "item_display_name"
    t.integer  "item_number"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
