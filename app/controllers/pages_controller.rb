class PagesController < ApplicationController
  
  def home
    @family = Family.new
  end
  
end
