class ItemsController < ApplicationController
  def create
    @item = Item.create(
      cart_id: item_params[:cart],
      product_id: item_params[:product],
      quantity: item_params[:quantity],
      item_price: item_params[:item_price]
    )
    @cart = Cart.find(item_params[:cart].to_i)
    render '/carts/show'
  end

  # This is showing all of the items in a cart, not all of the items
  def show
    @items = params[:ids]
    render "index"
  end

  def update
    @item = Item.find(params[:id])
    @item.update(
      quantity: item_params[:quantity],
      item_price: item_params[:item_price])
    render "index"
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render "index"
  end

  private
  def item_params
    params.require(:item).permit(:cart, :product, :quantity, :item_price, :ids)
  end
end
