class CreatePetcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :petcategories do |t|
      t.integer :category_id
      t.string :name
      t.boolean :online
      t.boolean :deleted
      t.timestamps
    end
  end
end
