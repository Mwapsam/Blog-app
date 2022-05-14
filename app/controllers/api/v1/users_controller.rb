class Api::V1::UsersController < Api::V1::ApiController
  def index
    render json: User.all
  end

  def show
    @user = User.find(params[:id])
    render json: { success: true, data: { user: @user, message: 'User found' } }
  end
end
