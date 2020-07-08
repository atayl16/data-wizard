class Changepetservicetypes < ActiveRecord::Migration[5.2]
  def change
    change_column :petservices, :service_id, 'integer USING CAST(service_id AS integer)'
    change_column :petservices, :category_id, 'integer USING CAST(category_id AS integer)'
    change_column :petservices, :duration, 'integer USING CAST(duration AS integer)'
    change_column :petservices, :is_add_on, 'boolean USING CAST(is_add_on AS boolean)'
    change_column :petservices, :is_custom, 'boolean USING CAST(is_custom AS boolean)'
    change_column :petservices, :breed_group_id, 'integer USING CAST(breed_group_id AS integer)'
    change_column :petservices, :deleted, 'boolean USING CAST(deleted AS boolean)'
  end
end
