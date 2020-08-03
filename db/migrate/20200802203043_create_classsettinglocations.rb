class CreateClasssettinglocations < ActiveRecord::Migration[5.2]
  def change
    create_table :classsettinglocations do |t|
      t.string :class_setting_location_id
      t.string :class_setting_id
      t.string :location_id

      t.timestamps
    end
  end
end
