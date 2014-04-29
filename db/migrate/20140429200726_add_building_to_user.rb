class AddBuildingToUser < ActiveRecord::Migration
  def change
    add_column :users, :building, :string
  end
end
