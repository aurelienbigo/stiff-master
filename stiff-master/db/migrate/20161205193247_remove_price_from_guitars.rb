class RemovePriceFromGuitars < ActiveRecord::Migration[5.0]
  def change
    remove_column :guitars, :price
  end
end
