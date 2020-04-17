class TagTeamMatchesController < ApplicationController
  def index
    @matches = TagTeam.find(params[:tag_team_id]).matches
    render json: @matches, tag_team_id: params[:tag_team_id]
  end
end
