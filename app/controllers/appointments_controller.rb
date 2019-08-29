class AppointmentsController < ApplicationController
  def index
    @appointments = policy_scope(Meeting)
    @sched_appointments = Meeting.all.where(matching_status: "Scheduled")
    @user_appointments = @sched_appointments.where(investor: current_user)
  end
end
