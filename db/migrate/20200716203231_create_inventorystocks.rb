class CreateInventorystocks < ActiveRecord::Migration[5.2]
  def change
    create_table :inventorystocks do |t|
      t.integer :sku_id
      t.integer :location_id
      t.integer :quantity
      t.decimal :price
      t.decimal :cost
      t.string :vendor
      t.date :expiration_date
      t.string :stock_type
      t.boolean :deleted

      t.timestamps
    end
  end
end
