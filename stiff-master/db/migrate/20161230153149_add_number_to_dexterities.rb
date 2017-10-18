class AddNumberToDexterities < ActiveRecord::Migration[5.0]
  def change
    add_column :dexterities, :number, :integer
  end
end
