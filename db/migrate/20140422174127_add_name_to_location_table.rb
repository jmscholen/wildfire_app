class AddNameToLocationTable < ActiveRecord::Migration
  def change
  	add_column :locations, :name, :string
  	add_column :locations, :city, :string
  	add_column :locations, :state, :string
  end
end
