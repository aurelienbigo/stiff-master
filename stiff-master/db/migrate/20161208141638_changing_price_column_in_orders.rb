class ChangingPriceColumnInOrders < ActiveRecord::Migration[5.0]
  def change
    remove_monetize :orders, :price_cents
    add_monetize :orders, :price
  end
end
