json.purchase @purchases do |purchase|
  json.id purchase.id
  json.email purchase.email
  json.credit_card_number purchase.credit_card_number
  json.cvv purchase.cvv
  json.expiration purchase.expiration
  json.address purchase.address
  json.zip purchase.zip
  json.cart purchase.cart_id
end