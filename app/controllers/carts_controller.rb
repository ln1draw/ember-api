class CartsController < ApplicationController
  def show
    @cart = Cart.find_or_create
  end

  def add_to_cart
    @cart = Cart.find_or_create
    @item = Item.create(params)
  end
end
