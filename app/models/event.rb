class Event < ApplicationRecord
  has_many :meetings
  has_many :attendances
  has_many :availabilities, through: :attendances
  has_many :users, through: :attendances
end
