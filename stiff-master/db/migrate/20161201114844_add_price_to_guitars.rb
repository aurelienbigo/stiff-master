class AddPriceToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :price, :integer
  end
end
