class ChangeAddressColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :clients, :street_address_1, :street_address
  end
end
