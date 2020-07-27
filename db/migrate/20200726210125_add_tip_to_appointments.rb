class AddTipToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :tip, :decimal
  end
end
