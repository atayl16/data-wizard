class ChangeTicketsInAppointments < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :tickets, :ticket_id
  end
end
