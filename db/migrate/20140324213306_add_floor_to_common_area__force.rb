class AddFloorToCommonAreaForce < ActiveRecord::Migration
  def change
    add_column :common_areas, :floor, :integer
  	add_index :common_areas, :floor
  end
end
