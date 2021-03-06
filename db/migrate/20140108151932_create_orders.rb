class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :address
      t.string :phone
      t.decimal :surcharge
      t.integer :user_id
      t.boolean :pay_type

      t.timestamps
    end
    add_index :orders, [:user_id, :created_at]
  end
end
