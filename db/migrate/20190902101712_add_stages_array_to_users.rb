class AddStagesArrayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :stages, :string, array: true, default: []
  end
end
