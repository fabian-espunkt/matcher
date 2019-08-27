class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.references :attendance, foreign_key: true
      t.time :start_time
      t.time :end_time
      t.boolean :slot_taken

      t.timestamps
    end
  end
end
