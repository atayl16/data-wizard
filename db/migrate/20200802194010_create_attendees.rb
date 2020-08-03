class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.string :attendee_id
      t.string :name

      t.timestamps
    end
  end
end
