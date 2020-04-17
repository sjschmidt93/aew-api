class WrestlersController < ApplicationController
  def index
    @wrestlers = Wrestler.all
    render json: @wrestlers
  end

  def show
    @wrestler = Wrestler.find(params[:id])  
    render json: @wrestler
  end

  def popular
  end
end
