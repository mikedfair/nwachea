class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end
  
  def show
    @subject = Subject.find(params[:id])
  end
  
  def new
    @subject = Subject.new
  end
  
  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:success] = "Class was created!"
      redirect_to subjects_path
    else
      render 'new'
    end
  end
  
  def destroy
    
  end
  
  private
  
  def subject_params
    params.require(:subject).permit(:subjectname, :grade, :hour, :cost, :teacher, :description)
  end
  

end