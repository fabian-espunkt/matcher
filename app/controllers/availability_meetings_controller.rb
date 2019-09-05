class AvailabilityMeetingsController < ApplicationController
  def update
    @user = current_user
    authorize @user
    # @availability = Availability.where().slot_taken = true
    @meeting = Meeting.find(params[:id])
    if @meeting.update(meeting_params)
      @meeting.availability.update(slot_taken: true)
      redirect_to appointments_path, notice: "Congrats! You booked your slot successfully."
    else
      render 'appointments/index'
    end
  end

  private

  def meeting_params
    params.require(:meeting).permit(:availability_id)
  end
end
