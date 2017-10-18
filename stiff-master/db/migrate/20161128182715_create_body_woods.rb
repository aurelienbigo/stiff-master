class CreateBodyWoods < ActiveRecord::Migration[5.0]
  def change
    create_table :body_woods do |t|
      t.string :name
      t.string :picture

      t.timestamps
    end
  end
end
