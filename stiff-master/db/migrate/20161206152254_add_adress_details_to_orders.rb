class AddAdressDetailsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :zip_code, :string
    add_column :orders, :city, :integer
    add_column :orders, :country, :string
  end
end
