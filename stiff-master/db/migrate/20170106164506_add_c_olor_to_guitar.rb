class AddCOlorToGuitar < ActiveRecord::Migration[5.0]
  def change
    add_reference :guitars, :color, foreign_key: true
  end
end
