class PhoneToInteger < ActiveRecord::Migration
  def change
    change_column :users, :phone, :integer
  end
end
