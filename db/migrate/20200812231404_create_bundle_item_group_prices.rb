class CreateBundleItemGroupPrices < ActiveRecord::Migration[5.2]
  def change
    create_table :bundle_item_group_prices do |t|
      t.string :bundle_item_group_id
      t.string :location_id
      t.decimal :price_per_item

      t.timestamps
    end
  end
end
