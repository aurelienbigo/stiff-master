class ChangeFieldsToGuitar < ActiveRecord::Migration[5.0]
  def change
    remove_column :guitars, :color
    remove_column :guitars, :category
    remove_column :guitars, :right_hander

    add_reference :guitars, :color, foreign_key: true
    add_reference :guitars, :category, foreign_key: true
    add_reference :guitars, :dexterity, foreign_key: true
  end
end
