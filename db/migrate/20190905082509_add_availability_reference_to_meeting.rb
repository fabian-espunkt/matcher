class AddAvailabilityReferenceToMeeting < ActiveRecord::Migration[5.2]
  def change
    add_reference :meetings, :availability, foreign_key: true
  end
end
