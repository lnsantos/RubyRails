class UsersController < ApplicationController

  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    user = User.create!(user_params)
    render json: {success: "#{user.id} create with success"}

  rescue ActiveRecord::RecordInvalid => e
    render json: {error: e.message}

  end

  private

  def user_params
    params
        .require(:user)
        .permit(:name, :username, :password)
  end

end
