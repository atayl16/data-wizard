class AddAssociatedlocationToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :associated_location_ids, :integer
  end
end
