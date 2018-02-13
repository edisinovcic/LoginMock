class ParkingHistoriesController < ApplicationController

  def index
    render json: ParkingHistory.all, status: :ok
  end

  def show
    parking_history = ParkingHistory.find(params[:id])
    render json: parking_history, status: :ok
  rescue ActiveRecord::RecordNotFound => e
    render json: {message: "User doesn't exists"}, status: 404
  end

  # POST /parking_histories
  # POST /parking_histories.json
  def create
    parking_history = ParkingHistory.new(parking_history_params)
    if parking_history.save
      render json: parking_history, status: 201
    else
      render json: parking_history.errors, status: :unprocessable_entity
    end
  end

  private

  def parking_history_params
    params.require(:parking_history).permit(:address, :date, :duration, :paid_price)
  end
end
