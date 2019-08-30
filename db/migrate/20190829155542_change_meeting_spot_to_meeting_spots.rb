class ChangeMeetingSpotToMeetingSpots < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :meeting_spot, :meeting_spots
  end
end
