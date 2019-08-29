class ViewingsController < ApplicationController

  def create_like
    viewing = Viewing.new
    attendance = Attendance.find(params[:attendance_id])
    viewing.attendance = attendance
    viewing.like = true
    viewing.user = current_user
    viewing.save
    skip_authorization
    redirect_to attendances_path
  end

  def create_dislike
    viewing = Viewing.new
    attendance = Attendance.find(params[:attendance_id])
    viewing.attendance = attendance
    viewing.like = false
    viewing.save
    skip_authorization
    redirect_to attendances_path
  end
end
