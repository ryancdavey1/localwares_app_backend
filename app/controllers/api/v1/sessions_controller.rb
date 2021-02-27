class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(email: params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      render json: @user
    else
      render json: {
        error: "Invalid email or password"
      }
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
        error: "Not currently logged in"
      }
    end
  end

end