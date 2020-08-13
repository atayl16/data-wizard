class CreateBundleItemGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :bundle_item_groups do |t|
      t.string :bundle_item_group_id
      t.string :bundle_id
      t.integer :quantity
      t.boolean :include_all_skus
      t.boolean :include_all_variations
      t.boolean :include_all_classes

      t.timestamps
    end
  end
end
