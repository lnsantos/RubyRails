class AuthController < ApplicationController

  def login
    User.find_by!(login_params)
    render json: { token: token_generate }

  rescue ActiveRecord::RecordInvalid => e
    render json: {error: 'User invalid'}
  end

  private

  def login_params
    params
        .require(:user)
        .permit(:username, :password)
  end

  def token_generate
    rand(10000000..90000000)
  end

end