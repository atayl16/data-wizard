class ChangeSalonserviceTypes < ActiveRecord::Migration[5.2]
  def change
    remove_column :salonservices, :service_id
    remove_column :salonservices, :category_id
    remove_column :salonservices, :duration
    remove_column :salonservices, :is_add_on
    remove_column :salonservices, :is_custom
    remove_column :salonservices, :breed_group_id
    remove_column :salonservices, :name
    remove_column :salonservices, :description
    remove_column :salonservices, :sku
  end
end
