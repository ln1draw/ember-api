class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id].to_i)
  end

  def update
    @cart = Cart.find(params[:id])
    @cart.update(purchased: true)
    render 'show'
  end

  def create
    @cart = Cart.create(status: 'open')
    render 'show'
  end

  private
  def product_params
    params.require(:cart).permit(:id, :status, :purchased)
  end
end
