class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.boolean :accessible_by_ground_vehicle
      t.string :local_water
      t.integer :humidity
      t.string :air_quality

      t.timestamps
    end
  end
end
