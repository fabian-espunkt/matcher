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
  has_many :viewings

  scope :investors, -> { where(kind: 'investor') }
  scope :startups, -> { where(kind: 'startup') }

  validates :first_name, :last_name, :mobile, :company_name, :position, :company_city, :sectors, :ticket_size_min, :ticket_size_max, :stages, :selling_to, :launch_status, if: :investor?, presence: true

  def investor?
    kind == 'investor'
  end

  def startup?
    kind == 'startup'
  end
end
