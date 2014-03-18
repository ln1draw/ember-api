class Product < ActiveRecord::Base
  has_many :carts, through: :items
  has_many :items
end
