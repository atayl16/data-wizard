class AddNamesToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :employee_name, :string
    add_column :tickets, :client_name, :string
  end
end
