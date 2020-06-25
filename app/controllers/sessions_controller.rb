class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:username]
    session[:name].save
    redirect_to '/'
  end

  def destroy
    session.delete :username
  end
end
