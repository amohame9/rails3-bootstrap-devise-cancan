Rails3BootstrapDeviseCancan::Application.routes.draw do
  
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :properties do
    resources :addresses
  end

  match '/addproperty', to: 'properties#new'
  match '/signup', to: 'users#new'
   
end