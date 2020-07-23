class AddserviceamountToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :serviceamount, :decimal
  end
end
