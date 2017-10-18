class AddIdentifierToPickguard < ActiveRecord::Migration[5.0]
  def change
    add_column :pickguards, :identifier, :string
  end
end
