class AddFieldsToGuitar < ActiveRecord::Migration[5.0]
  def change
    add_column :guitars, :name, :string
    add_column :guitars, :description, :text
  end
end
