class AddPickguard2ToGuitars < ActiveRecord::Migration[5.0]
  def change
    add_reference :guitars, :pickguard, foreign_key: true
  end
end
