class AddingStartupIdToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :startup_id, :integer
  end
end
