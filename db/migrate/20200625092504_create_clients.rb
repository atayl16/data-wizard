class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :client_id
      t.string :client_first_name
      t.string :client_last_name
      t.string :email
      t.string :mobile_phone
      t.string :work_phone
      t.string :home_phone
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :gender
      t.datetime :date_of_birth
      t.boolean :can_receive_automated_emails
      t.boolean :can_receive_manual_emails
      t.boolean :can_receive_automated_sms
      t.boolean :can_receive_manual_sms
      t.string :contact_preference
      t.string :client_since
      t.string :notes
      t.string :preferred_employee_id
      t.string :preferred_location_id
      t.boolean :deleted

      t.timestamps
    end
  end
end
