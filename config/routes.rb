Rails3BootstrapDeviseCancan::Application.routes.draw do
  

  get "static_pages/home"

  get "static_pages/help"

  get "council_histories/create"

  get "council_history/create"

  resources :councils


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :properties do
    resources :build, controller: 'properties/build' 
  end  

  resources :user_steps

  resources :energy_suppliers
  resources :water_suppliers

  match '/addproperty', to: 'properties#new'
  match '/signup', to: 'users#new'
  match 'properties/:id/build', to: 'properties/build#show', :as => :building
  match '/properties/:property_id/build/:id/edit', :as => :edit_building

end