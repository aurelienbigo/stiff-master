class AddPriceToFretWood < ActiveRecord::Migration[5.0]
  def change
    add_monetize :fret_woods, :price, currency: { present: false }
  end
end
