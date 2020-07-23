class AddEmptyToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :empty, :string
  end
end
