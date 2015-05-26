class LoginsController < ApplicationController
  
  def new
  
  end
  
  def create
    family = Family.find_by(email: params[:email])
    if family && family.authenticate(params[:password])
      session[:family_id] = family.id
      flash[:success] = "Your are logged in"
      redirect_to family_path(current_user)
      
    else
      flash.now[:danger] = "Your login credentials are not correct"
      render 'new'
    end
  end
  
  def destroy
    session[:family_id] = nil
    flash[:success] = "You are logged out"
    redirect_to root_path
  
  end
  
end