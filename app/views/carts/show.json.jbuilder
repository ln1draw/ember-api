if @cart.nil?
  json.status{
    json.status 'No existing cart'
  }
else
  if @cart.class == ActiveRecord::Relation::ActiveRecord_Relation_Cart
    @cart = @cart.last
  end
  json.cart { 
    json.id @cart.id
    items_array = []
    @cart.items.each do |item|
      items_array << item.id
    end
    json.items items_array
  }
end