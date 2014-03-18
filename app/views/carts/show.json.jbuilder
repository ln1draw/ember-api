if @cart.nil?
  json.status{
    json.status 'No existing cart'
  }
elsif @cart.class == ActiveRecord::Relation::ActiveRecord_Relation_Cart
  json.cart{
    json.id @cart.last.id
  }
else
  json.cart { 
    json.id @cart.id
  }
end