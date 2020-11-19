class Api::CartsController < ApplicationController

  def create
    @cart = Cart.new(cart_params)
    if @cart.save
      render :show
    else
      render json: @cart.errors.full_messages, status: 422
    end
  end

  def show 
    @cart = Cart.find_by(id: params[:id])

    @cart ? (render :show) : (render json: ['No Cart Found'], status: 404)

  end
  

  def destroy
    @cart = Cart.find_by(id: params[:id])
    if @cart
      id = @cart.user_id
      @cart.destroy
      Cart.create({ user_id: id })
      render json: {}
    else
      render json: ['No Cart Found'], status: 404
    end
  end

  private
  def cart_params
    params.require(:cart).permit(:user_id)
  end
end
