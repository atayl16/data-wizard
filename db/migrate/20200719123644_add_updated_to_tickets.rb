class AddUpdatedToTickets < ActiveRecord::Migration[5.2]
  def change
    add_column :tickets, :updated, :datetime
  end
end
