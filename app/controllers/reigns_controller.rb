class ReignsController < ApplicationController
  def active
    @reigns = Reign.active
    render json: @reigns, include_competitor: true
  end
end
