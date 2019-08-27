class Event < ApplicationRecord
  has_many :meetings
  has_many :attendances
end
