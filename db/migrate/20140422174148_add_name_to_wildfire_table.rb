class AddNameToWildfireTable < ActiveRecord::Migration
  def change
  	add_column :wild_fires, :name, :string
  end
end
