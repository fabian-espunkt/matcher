class AddNumberOfEmployeesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fte, :integer
  end
end
