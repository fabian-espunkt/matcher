class AddSellingArrayToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :selling_to, :string, array: true
  end
end
