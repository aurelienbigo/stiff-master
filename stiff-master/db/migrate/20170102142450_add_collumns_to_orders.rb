class AddCollumnsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :card_brand, :string
    add_column :orders, :card_country, :string
    add_column :orders, :card_exp_m, :integer
    add_column :orders, :card_exp_y, :integer
    add_column :orders, :card_last, :string
  end
end
