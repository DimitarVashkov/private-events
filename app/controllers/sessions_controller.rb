class SessionsController < ApplicationController
  def new

  end

  def create

  end

  def destroy
    flash[:success] = 'Logged out!'
    redirect_to root_url
  end

end
