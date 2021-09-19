class Api::V1::UsersController < Api::V1::ApiController

  def create
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def edit
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :password, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
