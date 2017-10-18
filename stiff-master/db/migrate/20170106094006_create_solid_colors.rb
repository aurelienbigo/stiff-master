class CreateSolidColors < ActiveRecord::Migration[5.0]
  def change
    create_table :solid_colors do |t|
      t.string :name
      t.string :identifier
      t.string :code

      t.timestamps
    end
  end
end
