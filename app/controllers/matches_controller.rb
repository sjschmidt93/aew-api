class MatchesController < ApplicationController
  def show
    @match = Match.find(params[:id])
    render json: @match
  end
end
