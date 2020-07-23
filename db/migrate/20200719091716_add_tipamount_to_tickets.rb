class AddTipamountToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :tipamount, :decimal
    add_column :tickets, :skuamount, :decimal
  end
end
