class WrestlerMatchesController < ApplicationController
  def index
    @matches = Wrestler.find(params[:wrestler_id]).all_matches
    render json: @matches, wrestler_id: params[:wrestler_id]
  end
end
