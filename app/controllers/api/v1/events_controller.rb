class Api::V1::EventsController < ApplicationController
  before_action :set_event, only: [:show, :update]

  # GET /event

  def index
     @events = Event.filter(params.slice(:job, :user))
    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      render json: @event, status: :created
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /events/1
  # def destroy
  #   @event.destroy
  # end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:event_name, :job_id, :resolved, :event_details, :event_type, :event_struct, :user_id, :image_source)
    end
end
