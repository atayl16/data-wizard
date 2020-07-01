class CreateSalonpricings < ActiveRecord::Migration[5.2]
  def change
    create_table :salonpricings do |t|
      t.integer :service_id
      t.integer :location_id
      t.integer :employee_id
      t.decimal :price
      t.boolean :deleted

      t.timestamps
    end
  end
end
