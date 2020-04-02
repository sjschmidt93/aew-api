class WrestlersController < ApplicationController
  def index
    if params[:match_id].present?
      @wrestlers = Match.find(params[:match_id]).wrestlers
    else
      @wrestlers = Wrestler.all
    end
    
    render json: @wrestlers
  end

  def show
    @wrestler = Wrestler.find(params[:id])  
    render json: @wrestler
  end
end
