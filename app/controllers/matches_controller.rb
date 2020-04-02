class MatchesController < ApplicationController
  def index
    @matches = Wrestler.find(params[:wrestler_id]).matches
    render json: @matches
  end

  def show
    @match = Match.find(params[:id])
    render json: @match
  end
end
