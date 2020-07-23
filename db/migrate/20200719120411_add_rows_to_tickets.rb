class AddRowsToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :service_amount_before_discount, :decimal
    add_column :tickets, :sku_amount_before_discount, :decimal
    add_column :tickets, :tip_amount, :decimal
  end
end
