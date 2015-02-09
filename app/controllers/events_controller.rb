class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create

  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    if @event.update(event_params)
      redirect_to events_path(@event)
    else
      render :edit
    end
  end


  def show

  end

  def delete

  end

  def event_params
    params.require(:event).permit(:date,:location,:description,:capacity,:requires_id)
  end

end
