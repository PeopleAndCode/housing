class AddUnitToUser < ActiveRecord::Migration
  def change
    add_column :users, :unit, :string
  end
end
