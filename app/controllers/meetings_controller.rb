class MeetingsController < ApplicationController
  def index
    @meetings = policy_scope(Meeting)
    @my_meetings_investors = Meeting.all.where(investor: current_user)
    @my_meetings_startups =  Meeting.all.where(startup: current_user)
    @my_likes = Viewing.all.where(user: current_user, like: true)
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
