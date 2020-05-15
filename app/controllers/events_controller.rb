class EventsController < ApplicationController
  before_action :authenticate_user!

  
    def index
      @Event = Event.all
    end

    def new
      @event = Event.new
    end
  
    def show
      @event = Event.find(params[:id])
    end
  
    def create
      @event = Event.new(event_params)
      @event.owner_id = current_user.id
    
      if @event.save
        redirect_to '/events'
      end
    end
  
    def update
      @event = Event.find(params[:id])
      @event.update(event_params)

      redirect_to events_path

    end
  
    def edit
      @event = Event.find(params[:id])
    end
  
    def destroy
      @event = Event.find(params[:id])
      @event.participations.count.times do 
        @event.participations.first.delete
      end
      @event.destroy 

      redirect_to events_path

    end


    private
    def find_params
    end

    def event_params
        params.require(:event).permit(:title, :description, :location, :duration, :start_date, :price, :owner_id)
    end


end
