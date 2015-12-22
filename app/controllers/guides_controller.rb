class GuidesController < ApplicationController
  before_action :set_guide, only: [:show]

  def show
  end

  def index
  end

  private
    def set_guide
      @guide = Guide.find(params[:id])
    end
end
