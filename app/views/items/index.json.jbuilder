json.item @items do |item|
  item = Item.find(item.to_i)
  json.id item.id
  json.item_price item.item_price
  json.quantity item.quantity
  json.cart item.cart_id
  json.product item.product_id 
end