EmberApi::Application.routes.draw do
  defaults format: :json do 
    get  '/products',  to: 'products#index'
    get  '/carts/:id', to: 'carts#show'
    post '/items',     to: 'carts#add_to_cart'
  end
end
