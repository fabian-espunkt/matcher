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
    @user.update(user_params)
    if @user.save!
      redirect_to matchings_path
    else
      render :profile
    end
  end

  private

  def user_params
    params.permit(:stages, :sectors, :selling_to, :launch_status, :generating_revenue, :profitable, :ticket_size_max)
  end
end
