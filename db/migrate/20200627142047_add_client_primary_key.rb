class AddClientPrimaryKey < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :client_id, :integer
  end
end
