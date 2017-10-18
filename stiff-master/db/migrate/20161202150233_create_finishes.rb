class CreateFinishes < ActiveRecord::Migration[5.0]
  def change
    create_table :finishes do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
