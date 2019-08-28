class ViewingsController < ApplicationController

  def index
    @users = User.all
  end
end
