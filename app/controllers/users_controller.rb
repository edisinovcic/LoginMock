class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201
    else
      render json: {message: 'User creation failed'}, status: 400
    end
  end

  def show
    user = User.find(params[:id])
    render json: user, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: {message: "User doesn't exists"}, status: 404


  end

  def update
    user = User.find(params[:id])
    user.id = params[:id]
    if user.save
      render json: user
    else
      render json: {message: 'User creation failed'}, status: :unprocessable_entity
    end
  rescue
    render json: {message: 'User creation failed'}, status: :unprocessable_entity
  end

  def destroy
    user = User.find(params[:id])
    if user.delete
      render json: user, status: :ok
    else
      render json: user.error, status: :unprocessable_entity
    end
  rescue
    render json: {message: 'User destroy failed'}, status: :unprocessable_entity
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :username)
  end

end
