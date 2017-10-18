class AddSkuToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :sku, :string
  end
end
