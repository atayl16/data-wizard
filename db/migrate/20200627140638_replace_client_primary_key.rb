class ReplaceClientPrimaryKey < ActiveRecord::Migration[5.2]
  def up
    remove_column :clients, :client_id
  end

  def down
    rename_column :clients, :id, :client_id
  end
end
