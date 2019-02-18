class UsersController < ApplicationController

skip_before_action :authorized, only: [:create, :index,:profile]

  def index
    render json: User.includes(:teams), include: ['teams']
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def profile
    userId= JWT.decode(request.authorization,'my_s3cr3t')[0]["user_id"]
    @user = User.find(userId)
    render json: {user: @user, jwt: request.authorization}

  end

  private
   def user_params
     params.require(:user).permit(:username, :password, :avatar)
   end
end
