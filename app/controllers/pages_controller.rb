class PagesController < ApplicationController
  
  def home
    @family = Family.new
  end
  
  def admin
    @families = Family.all
    @subjects = Subject.all
  end
  
end
