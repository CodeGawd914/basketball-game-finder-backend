class GamesController < ApplicationController

  def index
    render json: Game.includes(:teams), include: ['teams']
  end
end
