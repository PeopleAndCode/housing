class AddFloorToCommonArea < ActiveRecord::Migration
  def change
  	add_column :common_area, :floor, :integer
  	add_index :common_area, :floor
  end
end
