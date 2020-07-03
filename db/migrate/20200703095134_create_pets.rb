class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.integer :child_id
      t.integer :client_id
      t.boolean :deleted
      t.string :pet_name

      t.timestamps
    end
  end
end
