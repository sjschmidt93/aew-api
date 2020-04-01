class WrestlersController < ApplicationController
  def show
    @wrestler = Wrestler.first
    render json: @wrestler
  end
end
