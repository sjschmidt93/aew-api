class EventsController < ApplicationController
  def index
    limit = params[:limit].present? ? params[:limit] : nil
    @events = Event.order("date DESC").limit(limit)
    render json: @events
  end
end
