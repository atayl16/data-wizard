class ChangeApptstaffToString < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :employee_id, :string
  end
end
