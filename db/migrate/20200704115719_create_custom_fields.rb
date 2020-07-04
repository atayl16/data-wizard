class CreateCustomfields < ActiveRecord::Migration[5.2]
  def change
    create_table :customfields do |t|
      t.string :uuid
      t.string :title
      t.string :field_type
      t.boolean :required
      t.string :applicable_to
      t.timestamps
    end
  end
end
