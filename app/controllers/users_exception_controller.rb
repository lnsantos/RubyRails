class UsersExceptionController < ApplicationController

  def destroy
    if User.find_by_id(params[:id])&.destroy
      render json: {success: "#{params[:id]} deleted with success"}
    else
      render json: {error: 'You tried to delete an user that does not exist' }
    end
  end
end