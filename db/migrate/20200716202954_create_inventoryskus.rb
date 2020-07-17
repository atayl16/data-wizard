class CreateInventoryskus < ActiveRecord::Migration[5.2]
  def change
    create_table :inventoryskus do |t|
      t.integer :sku_id
      t.integer :product_id
      t.string :name
      t.integer :number
      t.string :barcode
      t.integer :target_quantity
      t.integer :alert_threshold
      t.boolean :deleted

      t.timestamps
    end
  end
end
