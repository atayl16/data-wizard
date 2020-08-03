class CreateClasssettingattendees < ActiveRecord::Migration[5.2]
  def change
    create_table :classsettingattendees do |t|
      t.string :class_setting_attendee_id
      t.string :class_setting_id
      t.string :attendee_id
      t.decimal :price
      t.integer :capacity
      t.boolean :hide_price
      t.string :book_from_interval
      t.string :book_from_datatype
      t.string :book_upto_interval
      t.string :book_upto_datatype
      t.boolean :members_only

      t.timestamps
    end
  end
end
