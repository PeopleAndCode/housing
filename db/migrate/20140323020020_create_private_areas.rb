class CreatePrivateAreas < ActiveRecord::Migration
  def change
    create_table :private_areas do |t|
      t.references :submissions, index: true
      t.string :type
      t.string :main_location
      t.string :sub_location
      t.string :severity
      t.string :status

      t.timestamps
    end
  end
end
