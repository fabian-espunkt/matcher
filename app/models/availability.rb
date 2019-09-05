class Availability < ApplicationRecord
  belongs_to :attendance
  validates :start_time, :end_time, presence: true
  has_many :meetings, dependent: :destroy

  scope :not_taken, -> { where(slot_taken: [nil, false]) }

  SLOTS = ["10:00-10:30", "10:30-11:00", "11:00-11:30", "11:30-12:00", "12:00-12:30", "12:30-13:00", "13:00-13:30", "13:30-14:00", "14:00-14:30", "14:30-15:00", "15:00-15:30", "15:30-16:00", "16:00-16:30", "16:30-17:00", "17:00-17:30", "17:30-18:00"]
  # SLOTS = ["08:00-08:30", "08:30-09:00", "10:00-11:00", "11:00-12:00", "12:00-13:00", "13:00-14:00", "14:00-15:00", "15:00-16:00", "16:00-17:00", "17:00-18:00", "18:00-19:00", "19:00-20:00"]

  def label
    "#{start_time.strftime('%H:%M')} - #{end_time.strftime('%H:%M')}"
  end
end
