class FixLongColumnInLocations < ActiveRecord::Migration
  def change
  	rename_column :locations, :long, :lng
  end
end
