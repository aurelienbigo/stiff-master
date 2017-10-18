class CreateHeadShapes < ActiveRecord::Migration[5.0]
  def change
    create_table :head_shapes do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
