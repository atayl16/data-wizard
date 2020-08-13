class ChangeGroupIdGroups < ActiveRecord::Migration[5.2]
  def change
    rename_column :bundle_item_groups, :bundle_item_group_id, :bundle_item_group_id_groups
  end
end
