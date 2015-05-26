class ChildrenController < ApplicationController
  before_action :set_child, only: [:edit, :update, :show]
  before_action :require_user
  before_action :require_same_user, only: [:edit, :update, :show]
  
  def index
    @children = Child.all
  end
  
  def show

  end
  
  def new
    @child = Child.new
  end

  def create
    @child = Child.new(child_params)
    @child.family = current_user    
    if @child.save
      flash[:success] = "Your Parent has been created successfully"
      redirect_to family_path(current_user)
    else
      render 'new' 
    end
  end

  def edit

  end
  
  def update
    if @child.update(child_params)
      flash[:success] = "Your Parent has been updated successfully"
      redirect_to family_path(current_user)
    end
  end
  
  def destroy
  
  end

  private
  def child_params
    params.require(:child).permit(:firstname, :lastname, :age, :grade, :allergies, :picture, :gender)
  end
  
  def set_child
    @child = Child.find(params[:id])
    @child.family = current_user
  end
  
  def require_same_user
    if current_user != @child.family
      flash[:danger] = "You can only update your own family members"
      redirect_to family_path
    end
  end
end