class RemoveTipamountFromTickets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :tipamount, :decimal
    remove_column :tickets, :amount_before_discount, :decimal
  end
end
