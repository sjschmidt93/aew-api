class ChampionshipsController < ApplicationController
  def index
    @championships = Championship.all
    render json: @championships
  end
end
