class Cart < ActiveRecord::Base
  has_many :products, through: :items
  has_many :items
end
