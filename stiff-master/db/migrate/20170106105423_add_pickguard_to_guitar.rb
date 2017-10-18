class AddPickguardToGuitar < ActiveRecord::Migration[5.0]
  def change
    add_reference :guitars, :pickguard_id
  end
end
