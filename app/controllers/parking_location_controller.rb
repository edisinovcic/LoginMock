class ParkingLocationController < ApplicationController

  def index
    render json: ParkingLocation.all, status: :ok
  end

  def create
    parking_location = ParkingLocation.new(parking_location_params)
    if parking_location.save
      render json: parking_location, status: 201
    else
      render json: {message: 'ParkingLocation creation failed'}, status: 400
    end
  end

  def show
    parking_location = ParkingLocation.find(params[:id])
    render json: parking_location, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: {message: "ParkingLocation doesn't exists"}, status: 404
  end

  private

  def parking_location_params
    params.require(:parking_location).permit(:name, :description, :latitude, :longitude)
  end

end
