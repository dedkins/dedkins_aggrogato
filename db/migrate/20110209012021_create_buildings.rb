class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :total_square_footage

      t.timestamps
    end
  end

  def self.down
    drop_table :buildings
  end
end
