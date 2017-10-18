class AddPriceToHeadShapes < ActiveRecord::Migration[5.0]
  def change
    add_monetize :head_shapes, :price, currency: { present: false }
  end
end
