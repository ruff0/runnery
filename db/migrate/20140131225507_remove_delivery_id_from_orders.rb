class RemoveDeliveryIdFromOrders < ActiveRecord::Migration
  def change
  	remove_column :orders, :delivery_id
  end
end
