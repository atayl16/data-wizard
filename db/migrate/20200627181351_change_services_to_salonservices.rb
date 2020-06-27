class ChangeServicesToSalonservices < ActiveRecord::Migration[5.2]
  def change
    rename_table :services, :salonservices
  end
end
