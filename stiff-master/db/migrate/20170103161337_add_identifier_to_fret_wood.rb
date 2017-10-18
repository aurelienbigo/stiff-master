class AddIdentifierToFretWood < ActiveRecord::Migration[5.0]
  def change
    add_column :fret_woods, :identifier, :string
  end
end
