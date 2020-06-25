class SessionsController < ApplicationController
  def new
  end

  def create
    session[:name] = params[:username]
  end

  def destroy
  end
end
