class LocationsController < ApplicationController
  def index
    render json: Location.includes(:games), include: ['games']
  end
end
