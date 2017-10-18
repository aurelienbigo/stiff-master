class AddFinishRefToGuitars < ActiveRecord::Migration[5.0]
  def change
    remove_column :guitars, :finish
    add_reference :guitars, :finish, foreign_key: true
  end
end
