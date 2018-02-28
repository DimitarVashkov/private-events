class EventsController < ApplicationController
  before_action :logged_in_user
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to all_events_path
    else
      redirect_to root_url
    end
  end


  # eager load the creators of the events otherwise N+1
  def index
    @events = Event.all.includes(:creator)
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:location, :date)
  end

end
