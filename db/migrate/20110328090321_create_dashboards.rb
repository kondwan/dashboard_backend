class CreateDashboards < ActiveRecord::Migration
  def self.up
    create_table :dashboards do |t|
    t.column :hostname, :string
    t.column :memory, :string
    t.column :hostname_address, :string
    t.column :mac_address, :string
    t.column :ip_address, :string
    t.column :diskspace, :string
    t.column :wireless_ip_address, :string
    t.column :cpu_information, :string
    
      t.timestamps
    end
  end

  def self.down
    drop_table :dashboards
  end
end
