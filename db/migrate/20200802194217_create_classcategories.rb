class CreateClasscategories < ActiveRecord::Migration[5.2]
  def change
    create_table :classcategories do |t|
      t.string :category_id
      t.string :name

      t.timestamps
    end
  end
end
