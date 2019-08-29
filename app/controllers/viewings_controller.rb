class ViewingsController < ApplicationController

  def index
    @users = User.all.reject { |u| u.kind == current_user.kind }
  end

  def like
    # go through each user_id if like = nil
    # if like then
      # create a new Viewing instance with value like = true and user_id = current_user.id
    # if dislike then
      # set the user_id's value to false
  end

end


# SERVICE OBJECT

# 1. gets the user_id from the Viewing instance
# 2. search in viewings via this user_id the current_user.id and check if value = true
  # 3. if so then save into meetings.matching_status --> to set an appointment
  # 4. if not then don't save it into meetings.matching_status
