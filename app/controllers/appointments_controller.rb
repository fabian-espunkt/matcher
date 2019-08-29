class AppointmentsController < ApplicationController
  def index
    @appointments = policy_scope(Meeting)
  end
end
