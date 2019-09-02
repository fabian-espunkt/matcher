class AddFundsRaisedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :funds_raised, :integer
  end
end
