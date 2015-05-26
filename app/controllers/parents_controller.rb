class ParentsController < ApplicationController
  before_action :set_parent, only: [:edit, :update, :show]
  before_action :require_user
  before_action :require_same_user, only: [:edit, :update, :show]
  
  def index
    @parents = Parent.all
  end
  
  def show
    @parent = Parent.find(params[:id])
  end
  
  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)
    @parent.family = current_user    
    if @parent.save
      flash[:success] = "Your Parent has been created successfully"
      redirect_to family_path(current_user)
    else
      render 'new'
    end
  end

  def edit

  end
  
  def update
    if @parent.update(parent_params)
      flash[:success] = "Your Parent has been updated successfully"
      redirect_to family_path(current_user)
    end
  end

  def show

  end
  
  private
  def parent_params
    params.require(:parent).permit(:firstname, :lastname, :phone, :active, :involvement, :picture)
  end
  
  def set_parent
    @parent = Parent.find(params[:id])
    @parent.family = current_user
  end
  
  def require_same_user
    if current_user != @parent.family
      flash[:danger] = "You can only update your own family members"
      redirect_to root_path
    end
  end
end