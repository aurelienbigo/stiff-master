class CreateGuitars < ActiveRecord::Migration[5.0]
  def change
    create_table :guitars do |t|
      t.references :body_wood, foreign_key: true
      t.references :user, foreign_key: true
      t.references :shape, foreign_key: true
      t.boolean :right_hander
      t.string :color
      t.string :finish
      t.string :category
      t.references :neck_wood, foreign_key: true
      t.references :fret_wood, foreign_key: true
      t.references :head_shape, foreign_key: true
      t.references :pickup, foreign_key: true

      t.timestamps
    end
  end
end
