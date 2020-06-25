class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name]
      redirect_to login_path
    elsif session[:name]
      redirect_to '/'
    end

  end

  def destroy
    session.delete :name
  end
end
