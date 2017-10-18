class AddDeliveryAddress2ToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :delivery_address2, :string
  end
end
