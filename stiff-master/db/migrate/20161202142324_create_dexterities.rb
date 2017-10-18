class CreateDexterities < ActiveRecord::Migration[5.0]
  def change
    create_table :dexterities do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
