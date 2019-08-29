class AddMeetingSpotsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :meeting_spot, :string
  end
end
