class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    event = Event.new(event_params)
    event.save
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end


  def show
    @event = Event.find(params[:id])
  end

  def destroy
    event = Event.find(params[:id])
    event.delete
    redirect_to events_path
  end

  def event_params
    params.require(:event).permit(:date,:location,:description,:capacity,:requires_id)
  end

end
