class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :ticket_id
      t.integer :location_id
      t.integer :client_id
      t.string :status
      t.integer :employee_id
      t.integer :closed_by_employee_id
      t.datetime :closed_at
      t.boolean :deleted
      t.integer :payment_item_id
      t.string :type
      t.integer :inventory_sku_id
      t.integer :quantity
      t.decimal :amount_before_discount
      t.integer :service_id
      t.integer :appointment_id
      t.decimal :amount

      t.timestamps
    end
  end
end
