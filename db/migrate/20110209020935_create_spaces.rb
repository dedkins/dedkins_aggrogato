class CreateSpaces < ActiveRecord::Migration
  def self.up
    create_table :spaces do |t|
      t.string :suite
      t.integer :square_feet

      t.timestamps
    end
  end

  def self.down
    drop_table :spaces
  end
end
