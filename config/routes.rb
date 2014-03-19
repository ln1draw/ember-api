EmberApi::Application.routes.draw do
  defaults format: :json do 
    get  '/products',   to: 'products#index'
    
    get  '/carts/null', to: 'carts#new'
    get  '/carts/:id',  to: 'carts#show'
    post '/carts',      to: 'carts#create'
    
    post '/items',      to: 'items#create'
    get  '/items',      to: 'items#show'
  end
end
