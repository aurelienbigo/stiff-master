class ChangeCityTypeInOrders < ActiveRecord::Migration[5.0]
  def change
    change_column :orders, :city, :string
  end
end
