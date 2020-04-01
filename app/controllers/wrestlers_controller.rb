class WrestlersController < ApplicationController
  def index
    @wrestlers = Match.find(params[:match_id]).wrestlers
    render json: @wrestlers
  end

  def show
    @wrestler = Wrestler.find(params[:id])  
    render json: @wrestler
  end
end
