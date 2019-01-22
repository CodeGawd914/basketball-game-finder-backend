class TeamsController < ApplicationController

  skip_before_action :authorized

  def index
    render json: Team.includes(:users), include: ['users']
  end
end
