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

ActiveRecord::Schema.define(:version => 20110406073708) do

  create_table "baobab", :force => true do |t|
    t.string "description", :null => false
    t.string "corr_valuee", :null => false
  end

  create_table "dashboards", :force => true do |t|
    t.string   "hostname"
    t.string   "memory"
    t.string   "hostname_address"
    t.string   "mac_address"
    t.string   "ip_address"
    t.string   "wireless_ip_address"
    t.string   "cpu_information"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "used_memory",         :null => false
    t.string   "shared_memory",       :null => false
    t.string   "buffered_memory",     :null => false
    t.string   "used_diskspace",      :null => false
    t.string   "free_diskspace",      :null => false
  end

  create_table "host_data", :force => true do |t|
    t.string "description"
    t.string "corr_value"
  end

  create_table "host_datas", :force => true do |t|
    t.string   "Free_memory",                                   :null => false
    t.decimal  "Free_diskspace", :precision => 10, :scale => 5, :null => false
    t.integer  "Host_id",                                       :null => false
    t.decimal  "Load_average",   :precision => 10, :scale => 5, :null => false
    t.string   "Host_name",                                     :null => false
    t.datetime "Date_created",                                  :null => false
    t.datetime "Date_updated",                                  :null => false
  end

  create_table "host_names", :force => true do |t|
    t.integer  "Host_id",         :null => false
    t.string   "Host_name",       :null => false
    t.string   "Mac_address",     :null => false
    t.string   "Ip_address",      :null => false
    t.string   "Total_memory",    :null => false
    t.string   "Total_diskspace", :null => false
    t.datetime "Date_created",    :null => false
    t.datetime "Date_updated",    :null => false
  end

  create_table "hostdatas", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hostnames", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "hostname"
    t.string   "mac_address"
    t.string   "ip_address"
  end

  create_table "softwares", :force => true do |t|
    t.string "description", :null => false
    t.string "corr_valuee", :null => false
  end

  create_table "users", :force => true do |t|
    t.string "name",     :null => false
    t.string "password", :null => false
  end

end
