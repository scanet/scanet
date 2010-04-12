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

ActiveRecord::Schema.define(:version => 20100127175642) do

  create_table "alarms", :force => true do |t|
    t.integer  "workstation_id"
    t.string   "original"
    t.string   "reported"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "wmi_property_id"
    t.string   "alarm_type"
  end

  create_table "clients", :force => true do |t|
    t.integer "wmi_namespace_id"
    t.integer "wmi_class_id"
    t.integer "wmi_property_id"
    t.string  "wmi_namespace_name"
    t.string  "wmi_class_name"
    t.string  "wmi_property_name"
  end

  create_table "configurations", :force => true do |t|
    t.string   "ip"
    t.string   "map_path"
    t.time     "report_time"
    t.integer  "report_seq"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardware_reports", :force => true do |t|
    t.integer  "workstation_id"
    t.integer  "wmi_property_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", :force => true do |t|
    t.integer  "workstation_id"
    t.integer  "wmi_property_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", :force => true do |t|
    t.integer  "wmi_property_id"
    t.string   "wmi_property_value"
    t.string   "workstation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "software_reports", :force => true do |t|
    t.integer  "workstation_id"
    t.integer  "wmi_property_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "softwares", :force => true do |t|
    t.integer  "workstation_id"
    t.integer  "wmi_property_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tools", :force => true do |t|
    t.string   "name"
    t.string   "version"
    t.string   "path"
    t.string   "command"
    t.string   "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ubications", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
    t.string   "rol"
  end

  create_table "wmi_classes", :force => true do |t|
    t.integer  "wmi_namespace_id"
    t.string   "name"
    t.string   "alias"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data_type"
    t.boolean  "state",            :default => true
  end

  create_table "wmi_events", :force => true do |t|
    t.integer  "wmi_namespace_id"
    t.string   "classname"
    t.string   "eventname"
    t.string   "condition"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wmi_methods", :force => true do |t|
    t.integer  "wmi_class_id"
    t.string   "name"
    t.string   "alias"
    t.string   "description"
    t.string   "method"
    t.string   "parameter"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wmi_namespaces", :force => true do |t|
    t.string   "name"
    t.string   "alias"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wmi_properties", :force => true do |t|
    t.integer  "wmi_class_id"
    t.string   "name"
    t.string   "alias"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "state",        :default => true
  end

  create_table "workstations", :force => true do |t|
    t.string   "x"
    t.string   "y"
    t.string   "ip"
    t.string   "code"
    t.string   "mac"
    t.string   "name"
    t.integer  "ubication_id"
    t.string   "type"
    t.integer  "owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login"
    t.string   "password"
    t.boolean  "alarm",        :default => false
  end

end
