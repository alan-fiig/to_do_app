class Admin::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(users_params)
    if user.save
      redirect_to admin_users_path
    else
      render :new
    end
  end

  private

  def users_params
    params.require(:user).permit(:name, :password)
  end

end
