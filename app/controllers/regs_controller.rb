class RegsController < ApplicationController
  before_action :set_reg, only: [:edit, :update, :show]
  before_action :require_user
  before_action :require_same_user, only: [:edit, :update, :show]
  
  def index
    @regs = Reg.all
  end
  
  def show

  end
  
  def new
    @reg = Reg.new
  end
  
  def create
    @reg = Reg.new(reg_params)
    @subject = Subject.all
    if @reg.save
      flash[:success] = "Your Registration Has Been Submmited!"
      redirect_to family_path(current_user)
    else
      render 'new'
    end
  end
  
  def destroy
    
  end
  
  private
  
  def reg_params
    params.require(:reg).permit(:student, :firstpri, :secondpri, :thirdpri, :firstalt, :secondalt, :thirdalt)
  end
  
  def set_reg
    @reg = Reg.find(params[:id])
    @reg.child.family = current_user
  end
  
  def require_same_user
    if current_user != @reg.child.family
      flash[:danger] = "You can only update your own family members"
      redirect_to family_path
    end
  end
  
end