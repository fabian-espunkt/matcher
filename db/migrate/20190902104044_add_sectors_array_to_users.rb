class AddSectorsArrayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sectors, :string, array: true
  end
end
