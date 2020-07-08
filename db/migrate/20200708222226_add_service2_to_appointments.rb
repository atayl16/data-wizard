class AddService2ToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :service2, :integer
  end
end
