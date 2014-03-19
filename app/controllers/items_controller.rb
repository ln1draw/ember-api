class ItemsController < ApplicationController
  def create
    Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      item_price: item_params[:item_price]
    )
    @cart = item_params[:cart]
    render '/cart/show'
  end

  private
  def item_params
    params.require(:item).permit(:cart, :product, :quantity, :item_price)
  end
end
