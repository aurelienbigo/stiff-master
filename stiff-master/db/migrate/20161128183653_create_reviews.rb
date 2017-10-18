class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :star
      t.string :comment
      t.references :guitar, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
