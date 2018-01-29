class AuthenticationsController < ApplicationController

  # GET /authentications
  # GET /authentications.json
  def index
    render json: Authentication.all, status: :ok
  end

  # GET /authentications/1
  # GET /authentications/1.json
  def show
    authentication = Authentication.find(params[:username])
    if authentication.nil?
      render json: "User doesn't exist"
    end
    if authentication.password == password
      render json: "Username and password are correct"
    else
      render json: "Password is incorect"
    end
  end

  # POST /authentications
  # POST /authentications.json
  def create
    @authentication = Authentication.new(authentication_params)
    if @authentication.save
      render :show, status: :created, location: @authentication
    else
      render json: @authentication.errors, status: :unprocessable_entity
    end
  end


  # DELETE /authentications/1
  # DELETE /authentications/1.json
  def destroy
    @authentication.destroy
  end

  private
  def set_authentication
    @authentication = Authentication.find(params[:id])
  end

  def authentication_params
    params.require(:authentication).permit(:username, :password)
  end
end
