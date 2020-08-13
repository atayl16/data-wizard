class ChangeGroupIdItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :bundle_items, :bundle_item_group_id, :bundle_item_group_id_items
  end
end
