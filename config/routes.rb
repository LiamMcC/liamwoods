Rails.application.routes.draw do
  get 'cart/index'
  resources :products
  resources :items
 root 'static_pages#home'
 
 get '/about' =>'static_pages#about'
 get '/help' => 'static_pages#help'
 
 get '/login' => 'user#login' 
 get '/logout' => 'user#logout' 
 
 
 get '/cart/:id', to: 'cart#add' # the , to: is the same as th =>
 
 # get 'static_pages/home'
 # get 'static_pages/help'
 # get 'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end