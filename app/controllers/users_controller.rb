class UsersController < ApplicationController
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

  def show
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
