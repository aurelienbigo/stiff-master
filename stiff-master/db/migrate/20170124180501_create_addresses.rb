class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :zip_code
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
