class AddPriceToCategories < ActiveRecord::Migration[5.0]
  def change
    add_monetize :categories, :price, currency: { present: false }
  end
end
