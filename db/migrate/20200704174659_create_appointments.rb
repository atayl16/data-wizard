class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :appointment_id
      t.integer :location_id
      t.integer :employee_id
      t.integer :client_id
      t.integer :child_id
      t.text :notes
      t.datetime :start_time
      t.datetime :end_time
      t.integer :service_id
      t.decimal :price
      t.integer :duration
      t.string :status
      t.datetime :change_time

      t.timestamps
    end
  end
end
