class MeetingsController < ApplicationController
  def index
    @meetings = policy_scope(Meeting)
    @my_meetings = Meeting.all.where(investor: current_user)
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    authorize @meeting
    @meeting.update(meeting_params)
    redirect_to meetings_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:event, :agreed_timeslot, :matching_status, :investor, :startup)
  end
end
