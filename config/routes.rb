Rails3BootstrapDeviseCancan::Application.routes.draw do
  get "properties/new"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :properties

  match '/addproperty', to: 'properties#new'
  match '/signup', to: 'users#new'
   
end