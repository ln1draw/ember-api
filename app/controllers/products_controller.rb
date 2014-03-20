class ProductsController < ApplicationController
  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.create(product_params)
    render :show
  end

  def destroy
    @product = Product.find(params[:id].to_i)
    @product.destroy
    render "index"
  end

  private
  def product_params
    params.require(:product).permit(:id, :name, :price, :image, :avatar, :description)
  end
end
