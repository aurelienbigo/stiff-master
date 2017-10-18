class AddIdentifierToBodyWood < ActiveRecord::Migration[5.0]
  def change
    add_column :body_woods, :identifier, :string
  end
end
