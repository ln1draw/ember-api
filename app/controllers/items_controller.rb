class ItemsController < ApplicationController
  def create
    Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      item_price: item_params[:item_price]
    )
    @cart = item_params[:cart]
    render '/carts/show'
  end

  # This is showing all of the items in a cart, not all of the items
  def show
    @items = params[:ids]
  end

  private
  def item_params
    params.require(:item).permit(:cart, :product, :quantity, :item_price, :ids)
  end
end
