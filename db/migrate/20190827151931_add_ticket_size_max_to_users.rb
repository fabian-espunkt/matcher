class AddTicketSizeMaxToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ticket_size_max, :string
  end
end
