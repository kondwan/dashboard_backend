class CreateHostdatas < ActiveRecord::Migration
  def self.up
    create_table :hostdatas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :hostdatas
  end
end
