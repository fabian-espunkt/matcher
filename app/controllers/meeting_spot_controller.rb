class MeetingSpotController < ApplicationController
  def update
    @user = current_user
    authorize @user
    if @user.update(user_params)
      redirect_to appointments_path, notice: "Updated your meeting spot successfully"
    else
      render :profile
    end
  end

  private

  def user_params
    params.require(:user).permit(:meeting_spot, :generating_revenue, :profitable, :ticket_size_max, stages: [], sectors: [], selling_to: [], launch_status: [], availability: [])
  end
end

# end of code
