class RemoveLaunchStatusFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :launch_status
  end
end
