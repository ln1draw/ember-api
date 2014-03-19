EmberApi::Application.routes.draw do
  defaults format: :json do 
    get    '/products',      to: 'products#index'
    get    '/products/:id',  to: 'products#show'
    
    get    '/carts/null',    to: 'carts#new'
    get    '/carts/:id',     to: 'carts#show'
    post   '/carts',         to: 'carts#create'
    get    '/carts',         to: 'carts#show'
    
    post   '/items',         to: 'items#create'
    get    '/items',         to: 'items#show'
    put    '/items/:id',     to: 'items#update'
    delete '/items/:id',     to: 'items#destroy'
    
    resources :purchases, defaults: {format: :json}
    resources :products,  defaults: {format: :json}
    resources :items   ,  defaults: {format: :json}
    resources :orders  ,  defaults: {format: :json}
    resources :carts   ,  defaults: {format: :json}
  end
end
