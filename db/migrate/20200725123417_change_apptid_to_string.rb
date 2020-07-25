class ChangeApptidToString < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :appointment_id, :string
  end
end
