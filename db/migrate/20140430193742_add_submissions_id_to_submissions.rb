class AddSubmissionsIdToSubmissions < ActiveRecord::Migration
  def change
  	add_column :submissions, :submissions_id, :integer

  	add_index :submissions, :submissions_id
  end
end
