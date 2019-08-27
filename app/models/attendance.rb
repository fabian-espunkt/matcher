class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :availabilites, dependent: :destroy
  has_many :viewings
end
