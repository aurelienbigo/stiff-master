class AddPriceToPickups < ActiveRecord::Migration[5.0]
  def change
    add_monetize :pickups, :price, currency: { present: false }
  end
end
