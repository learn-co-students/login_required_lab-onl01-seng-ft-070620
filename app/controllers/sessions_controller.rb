class SessionsController < ApplicationController
  def new
  end

# render hompage if logged in, redirect if not
  def create
    if params[:name].present?
      session[:name] = params[:name]
      render 'homepage'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.delete(:name)
  end
end
