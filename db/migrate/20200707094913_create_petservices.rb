class CreatePetservices < ActiveRecord::Migration[5.2]
  def change
    create_table :petservices do |t|
      t.string :service_id, index: { unique: true }
      t.string :category_id
      t.string :name
      t.string :description
      t.string :duration
      t.string :is_add_on
      t.string :is_custom
      t.string :breed_group_id
      t.string :sku
      t.string :deleted
      t.timestamps
    end
  end
end
