EpochClient::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :clients do 
    get :list, on: :collection
    get :map, on: :collection
  end


  #authenticated :user do
    #root :to => 'home#index'
  #end
  root :to => "clients#list"
  devise_for :users, :controllers => { :sessions => "users/sessions" }
  resources :users
end