class CreateClasssegmenttemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :classsegmenttemplates do |t|
      t.string :segment_template_id
      t.string :class_setting_id
      t.string :position
      t.string :kind
      t.integer :duration

      t.timestamps
    end
  end
end
