class AddChildIdToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :child_id, :integer
  end
end
