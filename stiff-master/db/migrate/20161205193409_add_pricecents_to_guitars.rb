class AddPricecentsToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_monetize :guitars, :price, default: "EUR", null: false
  end
end
