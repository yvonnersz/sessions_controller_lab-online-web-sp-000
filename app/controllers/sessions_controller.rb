class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username].present?
      session[:name] = params[:username]
      redirect_to '/'
    else
      redirect_to login_path
    end
    
  end

  def destroy
    session.delete :username
  end
end
