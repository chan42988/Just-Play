class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
    # ip = request.remote_ip
    # user = User.new(user_params)
    params[:user][:ip] = request.ip
    @user = User.new(user_params)
    if @user.save
      # session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
