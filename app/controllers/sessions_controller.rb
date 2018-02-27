class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user
      log_in user
      flash[:success] = "Logged in!"
      redirect_to root_url
    else
      flash[:danger] = "Bad username!"
      render 'new'
    end


  end

  def destroy
    log_out
    flash[:success] = 'Logged out!'
    redirect_to root_url
  end

end
