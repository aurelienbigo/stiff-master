class AddPriceToNeckWoods < ActiveRecord::Migration[5.0]
  def change
    add_monetize :neck_woods, :price, currency: { present: false }
  end
end
