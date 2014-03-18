class CartsController < ApplicationController
  def show
    @cart = Cart.where(status: 'open')
  end

# should be find_or_create? render show template and return the cart object
  def create
    @cart = Cart.create(status: 'open')
    render 'show'
  end
end
