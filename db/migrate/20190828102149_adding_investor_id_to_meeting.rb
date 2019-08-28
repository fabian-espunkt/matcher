class AddingInvestorIdToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :investor_id, :integer
  end
end
