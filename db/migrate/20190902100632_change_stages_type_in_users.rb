class ChangeStagesTypeInUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :stages, :string, array: true, default: []
  end
end
