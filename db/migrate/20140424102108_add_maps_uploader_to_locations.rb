class AddMapsUploaderToLocations < ActiveRecord::Migration
  def change
  	add_column :locations, :maps, :string
  end
end
