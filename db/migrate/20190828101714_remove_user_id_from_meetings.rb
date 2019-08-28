class RemoveUserIdFromMeetings < ActiveRecord::Migration[5.2]
  def change
    remove_column :meetings, :user_id
  end
end
