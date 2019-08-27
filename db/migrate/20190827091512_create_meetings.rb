class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.time :agreed_timeslot
      t.string :matching_status

      t.timestamps
    end
  end
end
