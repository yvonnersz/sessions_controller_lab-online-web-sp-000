class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:username]
    if session[:name]
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete :username
  end
end
