class CreateWildFires < ActiveRecord::Migration
  def change
    create_table :wild_fires do |t|
      t.boolean :firefighters_deployed
      t.string :hazard_level
      t.integer :location_id

      t.timestamps
    end
  end
end
