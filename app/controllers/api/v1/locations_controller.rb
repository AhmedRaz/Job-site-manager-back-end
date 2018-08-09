class Api::V1::LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update]

  # GET /locations

  def index
     @locations = Location.filter(params.slice(:city))
    render json: @locations
  end

  # GET /locations/1
  def show
    render json: @location
  end

  # POST /locations
  def create
    @location = Location.new(location_params)

    if @location.save
      render json: @location, status: :created
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /locations/1
  def update
    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /locations/1
  # def destroy
  #   @location.destroy
  # end

  private
    def set_location
      @location = Location.find(params[:id])
    end

    def location_params
      params.require(:location).permit(:latitude, :longitude, :address, :city, :state)
    end
end
