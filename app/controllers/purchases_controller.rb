class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.create(
      name: purchase_params[:name],
      email: purchase_params[:email],
      credit_card_number: purchase_params[:credit_card_number],
      cvv: purchase_params[:cvv],
      expiration: purchase_params[:expiration],
      address: purchase_params[:address],
      zip: purchase_params[:zip],
      cart_id: purchase_params[:cart].to_i,
      status: purchase_params[:status]
      )
    render "show"
  end

  def index
    @purchases = Purchase.all
  end

  private
  def purchase_params
    params.require(:purchase).permit(:id, :name, :email, :credit_card_number, 
      :cvv, :expiration, :address, :zip, :cart, :status)
  end
end