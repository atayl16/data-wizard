class AddRequestedToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :has_specific_employee, :boolean
  end
end
