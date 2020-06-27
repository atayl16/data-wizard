class AddSalonServices < ActiveRecord::Migration[5.2]
  def change
    add_column :salonservices, :service_id, :integer
    add_column :salonservices, :category_id, :integer
    add_column :salonservices, :name, :string
    add_column :salonservices, :description, :string
    add_column :salonservices, :duration, :integer
    add_column :salonservices, :is_add_on, :boolean
    add_column :salonservices, :is_custom, :boolean
    add_column :salonservices, :breed_group_id, :integer
    add_column :salonservices, :sku, :string
  end
end
