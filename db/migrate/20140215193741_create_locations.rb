class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
    	t.float :lat
    	t.float :long
    	t.integer :user_id

      t.timestamps
    end
  end
end
