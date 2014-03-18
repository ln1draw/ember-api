EmberApi::Application.routes.draw do
  defaults format: :json do 
    get '/products', to: 'products#index'
    
  end
end
