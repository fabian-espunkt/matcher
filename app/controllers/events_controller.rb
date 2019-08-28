class EventsController < ApplicationController
  def index
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end
end
