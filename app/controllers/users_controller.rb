class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user
    else
      render json: { message: 'User creation failed' }
    end
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = user.find(params[:id])
    user.id = params[:id]
    if user.save
      render json: user
    else
      render json: { message: 'Failed to create user' }
    end
  end

  def destroy
    user = User.find(params[:id])
    if user.delete
      render json: user, status: :ok
    else
      render json: user.error, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :username)
  end
end
