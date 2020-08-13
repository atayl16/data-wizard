class CreateBundleItems < ActiveRecord::Migration[5.2]
  def change
    create_table :bundle_items do |t|
      t.string :bundle_item_group_id
      t.string :resource_type
      t.string :resource_id

      t.timestamps
    end
  end
end
