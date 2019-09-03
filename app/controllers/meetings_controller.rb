class MeetingsController < ApplicationController
  def index
    @meetings = policy_scope(Meeting)
    if current_user.investor?
      @my_meetings = Meeting.where(investor: current_user)
      other_users_ids = @my_meetings.pluck(:startup_id)
    else
      @my_meetings = Meeting.where(startup: current_user)
      other_users_ids = @my_meetings.pluck(:investor_id)
    end
    @my_likes = Viewing.includes(:attendance).where(user: current_user, like: true).where.not(attendances: { user_id: other_users_ids })
  end

  def edit
    @meeting = Meeting.find(params[:id])
  end

  def update
    @meeting = Meeting.find(params[:id])
    authorize @meeting
    @meeting.update(meeting_params)
    if @meeting.matching_status == "Matched"
      flash[:alert] = "You have matched!"
    end
    redirect_to meetings_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:event, :agreed_timeslot, :matching_status, :investor, :startup)
  end
end
