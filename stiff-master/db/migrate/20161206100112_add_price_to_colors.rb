class AddPriceToColors < ActiveRecord::Migration[5.0]
  def change
    add_monetize :colors, :price, currency: { present: false }
  end
end
