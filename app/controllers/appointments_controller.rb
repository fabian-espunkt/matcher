class AppointmentsController < ApplicationController
  def index
    @appointments = policy_scope(Meeting)
    @sched_appointments = Meeting.all.where(matching_status: "Scheduled")
    @user_appointments = @sched_appointments.where(investor: current_user)
    @meetings = Meeting.where(startup_id: current_user.id)
    @user = current_user
    @event = Event.first
    @investor_availabilities = []
    @meetings.each do |meeting|
      meeting.investor.availabilities.each { |avail| @investor_availabilities << "#{avail.start_time.strftime('%H:%M')} - #{avail.end_time.strftime('%H:%M')}" }
    end
  end
end
