class RemovePriceFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :price, :float
  end
end
