class AddColumnRepairTypeToCommonAreas < ActiveRecord::Migration
  def change
  	add_column :common_areas, :repair_type, :string
  	add_index :common_areas, :repair_type
  end
end
