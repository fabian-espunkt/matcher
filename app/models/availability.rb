class Availability < ApplicationRecord
  belongs_to :attendance
  validates :start_time, :end_time, presence: true
end
