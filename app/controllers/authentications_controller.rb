class AuthenticationsController < ApplicationController

  # GET /authentications
  # GET /authentications.json
  def index
    render json: Authentication.all, status: :ok
  end


  def show_by_username_and_password
    username = params[:username]
    password = params[:password]
    authentication = Authentication.find_by_username!(username)
    if authentication.nil?
      render json: {message: "User doesn't exist"}
      raise ActiveRecord::RecordNotFound
    end
    if authentication.password == password
      render json: {message: "Username and password are correct"}
    else
      render json: {message: "Password is incorect"}
    end
  rescue ActiveRecord::RecordNotFound => e
    render json: {message: "User doesn't exist"}, status: 404
  end


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
