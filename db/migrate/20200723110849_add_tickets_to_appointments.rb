class AddTicketsToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :tickets, :string
    add_column :appointments, :ticket_status,     :string
    add_column :appointments, :payment_item_id,   :integer
    add_column :appointments, :ticket_type, :string
    add_column :appointments, :inventory_sku_id, :integer
    add_column :appointments, :quantity, :integer
    add_column :appointments, :amount, :decimal
  end
end
