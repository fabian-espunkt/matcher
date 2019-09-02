class AddLaunchStatusArrayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :launch_status, :string, array: true
  end
end
