class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if session[:name]
      redirect_to '/'
    elsif params[:name]
      redirect_to login_path
    end
  end

  def destroy
    session.delete :name
  end
end
