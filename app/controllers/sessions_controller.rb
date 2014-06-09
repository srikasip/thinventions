class SessionsController < ApplicationController
  skip_before_filter :authorize, only: [:new, :create]

  def new
  end

def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged In!"
      redirect_to root_path
    else
      flash[:error] = 'Invalid username or password.'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Logged out successfully!"
  end
end
