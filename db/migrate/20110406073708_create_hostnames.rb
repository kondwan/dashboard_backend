class CreateHostnames < ActiveRecord::Migration
  def self.up
    create_table :hostnames do |t|
      t.column :hostname, :string
      t.column :mac_address, :string
      t.column :ip_address, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :hostnames
  end
end 
