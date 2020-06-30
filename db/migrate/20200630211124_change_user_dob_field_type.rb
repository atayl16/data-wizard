class ChangeUserDobFieldType < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :date_of_birth
  end
end
