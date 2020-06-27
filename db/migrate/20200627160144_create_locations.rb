class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.integer :location_id, :primary_key
      t.string :nickname
      t.string :country
      t.string :street_address
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.boolean :deleted

      t.timestamps
    end
  end
end
