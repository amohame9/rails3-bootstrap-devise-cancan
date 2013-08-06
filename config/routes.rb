Rails3BootstrapDeviseCancan::Application.routes.draw do
  

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

  match '/addproperty', to: 'properties#new'
  match '/signup', to: 'users#new'
  match 'properties/:id/build', to: 'properties/build#show', :as => :building
  match '/properties/:property_id/build/:id/edit', :as => :edit_building

end