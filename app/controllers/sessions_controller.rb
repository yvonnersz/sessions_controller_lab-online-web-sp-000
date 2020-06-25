class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:name]
    if params[:name].empty? || params[:name] == nil
      redirect_to login_path
    else
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
  end
end
