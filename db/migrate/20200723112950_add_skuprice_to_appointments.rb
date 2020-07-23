class AddSkupriceToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :sku_amount, :decimal
  end
end
