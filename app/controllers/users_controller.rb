class UsersController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  def create
      @user = User.new(user_params)
      @user.ip = request.remote_ip
      if @user.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :ip)
  end
end
