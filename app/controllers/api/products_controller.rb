class Api::ProductsController < ApplicationController
  def show
    @product = Product.find_by(id:params[:id])
    if @product
      render :show
    else
      render json: ["sorrry"], status: 401
    end
  end

  def index
    @products = Product.all
    render :index
  end

end
