class CreateBundles < ActiveRecord::Migration[5.2]
  def change
    create_table :bundles do |t|
      t.string :bundle_id
      t.string :name
      t.integer :validity_period
      t.boolean :in_membership
      t.boolean :available_online

      t.timestamps
    end
  end
end
