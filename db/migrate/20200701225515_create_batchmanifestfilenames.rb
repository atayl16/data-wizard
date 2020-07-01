class CreateBatchmanifestfilenames < ActiveRecord::Migration[5.2]
  def change
    create_table :batchmanifests do |t|
      t.string :filename
      t.string :type

      t.timestamps
    end
  end
end
