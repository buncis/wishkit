class GuidesController < ApplicationController
  before_action :set_guide, only: [:show]

  def show
    @reviews = @guide.reviews
    if user_signed_in?
      @review = current_user.reviews.build
    end
  end

  def index
  end

  private
    def set_guide
      @guide = Guide.find(params[:id])
    end
end
