class EventsController < ApplicationController
  layout 'hear_us_sing'
  
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to manage_events_path
    else
      render :new
    end
  end

  def index
    @events = Event.all
  end

  def manage_events
    @events = Event.all
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to manage_events_path
    else
      render :edit
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id]).destroy

    redirect_to manage_events_path
  end

  private

    def event_params
      params.require(:event).permit(:title, :start_date, :end_date, :ticket_url, :you_tube_url)
    end
end
