class FamiliesController < ApplicationController
  before_action :set_family, only: [:edit, :update, :show]
  before_action :require_user, only: [:index, :edit, :update, :show]
  before_action :require_same_user, only: [:edit, :update]
    
  def index
    @families = Family.all
  end
  
  def new
    @family = Family.new
  end
  
  def create
    @family = Family.new(family_params)
    if @family.save
      flash[:success] = "Your Family has been created successfully"
      session[:family_id] = @family.id
      redirect_to family_path(current_user)
    else
      render 'pages/home' 
    end
  end

  def edit
    
  end
  
  def update
    if @family.update(family_params)
      flash[:success] = "Your Family has been updated successfully"
      redirect_to family_path
    end
  end

  def show

  end
  
  private
  def family_params
    params.require(:family).permit(:familyname, :email, :password)
  end

  def set_family
    @family = Family.find(params[:id])
  end
  
  def require_same_user
    if current_user != @family
      flash[:danger] = "You can only update your profile"
      redirect_to root_path
    end
  end
end