class AddMeetingSpotToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :meeting_spot, :string
  end
end
