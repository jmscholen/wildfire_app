class RemoveMapsAndAddMapColumnToLocations < ActiveRecord::Migration
  def change
  	remove_column :locations, :maps 
  	add_column :locations, :map, :string
  end
end
