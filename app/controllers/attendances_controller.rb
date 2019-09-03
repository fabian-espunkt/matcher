class AttendancesController < ApplicationController

  def index
    @attendances = policy_scope(Attendance).includes(:user).where.not(users: { kind: current_user.kind })
    @attendances = @attendances.where("sectors && ARRAY[?]::varchar[]", current_user.sectors).
    where("stages && ARRAY[?]::varchar[]", current_user.stages).
    where("launch_status && ARRAY[?]::varchar[]", current_user.launch_status).
    where("selling_to && ARRAY[?]::varchar[]", current_user.selling_to).
    where("generating_revenue = ?", current_user.generating_revenue)
    @attendances = @attendances.reject do |attendance|
      attendance.viewings.pluck(:user_id).include? current_user.id
    end
  end
end
