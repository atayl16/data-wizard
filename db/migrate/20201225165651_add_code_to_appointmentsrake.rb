class AddCodeToAppointmentsrake < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :code, :string
  end
end
