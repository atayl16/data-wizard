class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.integer :employee_id
      t.string :name
      t.string :title
      t.string :email
      t.string :username
      t.integer :location_id
      t.boolean :deleted

      t.timestamps
    end
  end
end
