class DeleteCOlumnColorIdToGuitar < ActiveRecord::Migration[5.0]
  def change
    remove_column :guitars, :color_id
  end
end
