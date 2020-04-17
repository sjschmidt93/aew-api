class EventMatchesController < ApplicationController
  def index
    @matches = Event.find(params[:event_id]).matches
    render json: @matches
  end
end
