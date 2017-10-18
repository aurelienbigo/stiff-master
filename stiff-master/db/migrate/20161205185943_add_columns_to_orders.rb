class AddColumnsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :state, :string
    add_column :orders, :guitar_sku, :string
    add_column :orders, :payment, :json
    add_monetize :orders, :price_cents
  end
end
