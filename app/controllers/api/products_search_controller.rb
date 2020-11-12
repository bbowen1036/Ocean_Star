class Api::ProductsSearchController < ApplicationController
  def index
    @query = params[:query]
    @products = Product.where("lower(name) LIKE ?", "%#{params[:query]}%", )
    render "api/products/index"
  end
end

