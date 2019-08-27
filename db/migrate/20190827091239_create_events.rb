class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :address
      t.string :organizer_name
      t.string :organizer_address
      t.string :organizer_url

      t.timestamps
    end
  end
end
