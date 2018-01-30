class ParkingHistoriesController < ApplicationController

  # GET /parking_histories
  # GET /parking_histories.json
  def index
    render json: ParkingHistory.all, status: :ok
  end

  # GET /parking_histories/1
  # GET /parking_histories/1.json
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

  # PATCH/PUT /parking_histories/1
  # PATCH/PUT /parking_histories/1.json
  def update
    if parking_history.update(parking_history_params)
      render :show, status: :ok, location: parking_history
    else
      render json: parking_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /parking_histories/1
  # DELETE /parking_histories/1.json
  def destroy
    parking_history = ParkingHistory.find(params[:id])
    if parking_history.save
      render json: parking_history, status: 202
    else
      render json: {message: 'User creation failed'}, status: :unprocessable_entity
    end
  rescue
    render json: {message: 'User creation failed'}, status: :unprocessable_entity
  end

  private

  def parking_history_params
    params.require(:parking_history).permit(:address, :date, :duration, :paid_price)
  end
end
