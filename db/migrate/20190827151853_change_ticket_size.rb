class ChangeTicketSize < ActiveRecord::Migration[5.2]
  def change
     rename_column :users, :ticket_size, :ticket_size_min
  end
end
