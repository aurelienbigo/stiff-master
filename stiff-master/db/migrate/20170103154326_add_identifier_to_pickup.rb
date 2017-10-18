class AddIdentifierToPickup < ActiveRecord::Migration[5.0]
  def change
    add_column :pickups, :identifier, :string
  end
end
