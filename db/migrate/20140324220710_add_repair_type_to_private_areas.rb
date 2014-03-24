class AddRepairTypeToPrivateAreas < ActiveRecord::Migration
  def change
  	add_column :private_areas, :repair_type, :string
  	add_index :private_areas, :repair_type
  end
end
