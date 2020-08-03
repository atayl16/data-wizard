class CreateClasssettings < ActiveRecord::Migration[5.2]
  def change
    create_table :classsettings do |t|
      t.string :class_setting_id
      t.string :class_id
      t.string :name
      t.string :cancellation_policy
      t.string :cancellation_interval
      t.string :cancellation_value

      t.timestamps
    end
  end
end
