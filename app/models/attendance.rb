class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :availabilities, dependent: :destroy
  has_many :viewings
  accepts_nested_attributes_for :availabilities
end
