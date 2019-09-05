class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  mount_uploader :photo, PhotoUploader

  has_many :attendances, dependent: :destroy
  has_many :availabilities, through: :attendances
  has_many :events, through: :attendances
  has_many :meetings
  has_many :investor_meetings, foreign_key: :investor, class_name: "Meeting"
  has_many :viewings

  scope :investors, -> { where(kind: 'investor') }
  scope :startups, -> { where(kind: 'startup') }

  validates :first_name, :last_name, if: :investor?, presence: true
  validates :first_name, :last_name, if: :startup?, presence: true

  accepts_nested_attributes_for :attendances

  def investor?
    kind == 'investor'
  end

  def startup?
    kind == 'startup'
  end

  # def scheduled_investor_meetings
  #   investor_meetings.where(matching_status: "Scheduled")
  # end

  # def meetings_for_hour(datetime)
  #   scheduled_investor_meetings.where(agreed_timeslot: datetime...(datetime + 0.5.hour))
  # end

  # def formatted_availabilities
  #   availabilities = attendances.last.availabilities
  #   return availabilities.map { |availability| "#{availability.start_time.strftime('%H:%M')}-#{availability.end_time.strftime('%H:%M')}" }
  # end
end
