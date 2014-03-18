class Cart < ActiveRecord::Base
  has_many :products, through: :items
  has_many :items

  # Right now, this method would not work on a network;
  # it only works from a single computer. I wanted to get 
  # it to work this way before tackling this issue.

  # It allow for only one single open cart at a time.

  def self.find_or_create
    carts = Cart.where(status: 'open')
    if carts.empty?
      return Cart.create
    else
      return carts.last
    end
  end
end
