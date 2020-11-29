class Api::CartItemsController < ApplicationController
  def create
    
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      id = @cart_item.cart.id

      @cart = Cart.find_by(id: id)
      render 'api/carts/show'
    else
      render json: @cart_item.errors.full_messages, status: 422
    end
  end

  def destroy
    @cart_item = CartItem.find_by(id: params[:id])
    if @cart_item
      id = @cart_item.cart.id
      @cart_item.destroy
      @cart = Cart.find_by(id: id)
      render 'api/carts/show'
    else
      render json: ['No Cart Item Found'], status: 404
    end

  end

  def show 
    @cart_item = CartItem.find_by(id: params[:id])

    @cart_item ? (render :show) : (render json: ['No Cart Item Found'], status: 404)
  end

  private
  def cart_item_params
    params.require(:cartItem).permit(:product_id, :cart_id)
  end
end
