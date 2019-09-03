class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profile]

  def home
  end

  def profile
    @user = current_user
  end

  def update
    @user = current_user
    authorize @user

    if @user.update(user_params)
      redirect_to attendances_path, notice: "Updated your profile successfully"
    else
      render :profile
    end
  end

  private

  def user_params
    params.require(:user).permit(:generating_revenue, :meeting_spot, :profitable, :ticket_size_max, stages: [], sectors: [], selling_to: [], launch_status: [], availability: [])
  end
end
