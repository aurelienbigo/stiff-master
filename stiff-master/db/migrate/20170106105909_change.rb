class Change < ActiveRecord::Migration[5.0]
  def change
    remove_column :guitars, :pickguard_id_id
  end
end
