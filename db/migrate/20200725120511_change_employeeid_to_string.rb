class ChangeEmployeeidToString < ActiveRecord::Migration[5.2]
  def change
    change_column :staffs, :employee_id, :string
  end
end
