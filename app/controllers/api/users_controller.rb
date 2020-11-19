class Api::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      id = @user.id
      Cart.create({ user_id: id })

      render :show
    else
      render json: @user.errors.full_messages, status: 422
    end
  end

  def show
    @user = User.first
    if @user
      render :show
    else
      render json: ['No user Found'], status: 404
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
