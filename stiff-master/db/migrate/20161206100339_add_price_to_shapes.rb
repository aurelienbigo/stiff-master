class AddPriceToShapes < ActiveRecord::Migration[5.0]
  def change
    add_monetize :shapes, :price, currency: { present: false }
  end
end
