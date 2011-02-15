class AddBuildingIdToSpaces < ActiveRecord::Migration
  def self.up
    add_column :spaces, :building_id, :integer
  end

  def self.down
    remove_column :spaces, :building_id
  end
end
