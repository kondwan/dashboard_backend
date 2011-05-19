class CreateHostDatas < ActiveRecord::Migration
  def self.up
    create_table :host_datas do |t|
        t.column :description, :string
        t.column :corr_valuee, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :host_datas
  end
end
