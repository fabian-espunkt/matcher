class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :attendances, dependent: :destroy
  has_many :availabilities, through: :attendances
  has_many :events, through: :attendances
  has_many :meetings
  has_many :viewings

  if user.type == "investor"
    validates :first_name, :last_name, :mobile, :company_name, :position, :company_city, :sectors, :ticket_size_min, :ticket_size_max, :stage, :selling_to, :generating_revenue, :profitable, :launch_status, presence: true
  else
    validates
  end
end


