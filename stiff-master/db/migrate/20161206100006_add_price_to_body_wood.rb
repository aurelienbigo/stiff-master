class AddPriceToBodyWood < ActiveRecord::Migration[5.0]
  def change
    add_monetize :body_woods, :price, currency: { present: false }
  end
end
