class AddCreatedToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :created, :datetime
  end
end
