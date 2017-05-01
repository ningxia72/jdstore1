class ProductsController < ApplicationController
  def index
    @products = product.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
