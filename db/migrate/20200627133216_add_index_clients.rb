class AddIndexClients < ActiveRecord::Migration[5.2]
  def change
    add_index :clients, :client_id
  end
end
