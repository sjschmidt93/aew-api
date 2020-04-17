class TagTeamMatchesController < ApplicationController
  def index
    @matches = TagTeam.find(params[:tag_team_id]).matches
    render json: @matches
  end
end
