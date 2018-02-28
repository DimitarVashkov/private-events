class UsersController < ApplicationController
  before_action :logged_in_user
  def index

  end
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "You signed up!"
    else
      flash[:danger] = "Sign up failed..."
    end
    redirect_to root_url
  end

  def all_users
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
