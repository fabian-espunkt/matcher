class AttendancesController < ApplicationController

  def index
    @attendances = policy_scope(Attendance).includes(:user).where.not(users: { kind: current_user.kind })
    @attendances = @attendances.reject do |attendance|
      attendance.viewings.pluck(:user_id).include? current_user.id
    end
  end
end
