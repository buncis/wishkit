class StaticPagesController < ApplicationController
  def home
    @reviews=Review.all
  end

  def help
  end

  def privacy
  end

  def about
  end

  def contact
  end
  
  def popular_location 
  end
  
end
