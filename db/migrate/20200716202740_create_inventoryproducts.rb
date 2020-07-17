class CreateInventoryproducts < ActiveRecord::Migration[5.2]
  def change
    create_table :inventoryproducts do |t|
      t.integer :product_id
      t.string :name
      t.string :brand
      t.string :category
      t.string :vendor
      t.text :description
      t.boolean :visible_to_clients
      t.boolean :commissionable
      t.boolean :discontinued
      t.string :discontinued_reasons
      t.integer :alternative_product_ids
      t.boolean :deleted

      t.timestamps
    end
  end
end
