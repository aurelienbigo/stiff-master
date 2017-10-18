class AddPriceToFinishes < ActiveRecord::Migration[5.0]
  def change
    add_monetize :finishes, :price, currency: { present: false }
  end
end
