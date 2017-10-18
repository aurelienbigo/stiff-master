class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :delivery_address
      t.references :user, foreign_key: true
      t.references :guitar, foreign_key: true
      t.float :price

      t.timestamps
    end
  end
end
