class ViewingsController < ApplicationController

  def create_like
    viewing = Viewing.new
    attendance = Attendance.find(params[:attendance_id])
    viewing.attendance = attendance
    viewing.like = true
    viewing.user = current_user
    viewing.save
    skip_authorization
    respond_to do |format|
            format.html { redirect_to attendances_path }
            format.js # <-- will render `app/viewings/create_like.js.erb`

    end
  end

  def create_dislike
    viewing = Viewing.new
    attendance = Attendance.find(params[:attendance_id])
    viewing.attendance = attendance
    viewing.like = false
    viewing.user = current_user
    viewing.save
    skip_authorization
    respond_to do |format|
            format.html { redirect_to attendances_path }
            format.js # <-- will render `app/viewings/create_dislike.js.erb`
    end
  end
end
