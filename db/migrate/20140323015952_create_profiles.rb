class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
     t.references :submissions, index: true
     t.string :first_name
     t.string :last_name
     t.string :building
     t.integer :unit
     t.string :location_option
     
      t.timestamps
    end
  end
end
