class CartsController < ApplicationController
  def show
    @cart = Cart.find(params[:id])
  end

# should be find_or_create? render show template and return the cart object
  def create
    @cart = Cart.create(status: 'open')
    render 'show'
  end
end
