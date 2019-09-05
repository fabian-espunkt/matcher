class Meeting < ApplicationRecord
  belongs_to :investor, class_name: "User", foreign_key: :investor_id
  belongs_to :startup, class_name: "User", foreign_key: :startup_id
  belongs_to :event
  belongs_to :availability, optional: true

  scope :with_slot_booked, -> { where.not(availability_id: nil)}
end
