class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :class_id
      t.string :category_id
      t.string :name
      t.string :description
      t.string :instructions
      t.string :what_to_bring
      t.boolean :hide_prices

      t.timestamps
    end
  end
end
