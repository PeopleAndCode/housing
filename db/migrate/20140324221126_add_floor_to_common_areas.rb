class AddFloorToCommonAreas < ActiveRecord::Migration
  def change
  	add_column :private_areas, :floor, :integer
  	add_index :private_areas, :floor
  end
end
