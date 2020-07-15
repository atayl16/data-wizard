class AddPetnameToClients < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :pet_name, :string
  end
end
