class StaticPagesController < ApplicationController
  def home
    @reviews=Review.all
    @beritas=Berita.all
    @wisatas=Wisata.all
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
    @wisatas = Wisata.all
  end

end
