EpochClient::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :clients do
    get :list, on: :collection
    get :map, on: :collection
  end

  delete  'likes/:resource_name/:resource_id' => "likes#destroy", :as => 'like'
  post    'likes/:resource_name/:resource_id' => "likes#create",  :as => 'like'
  get     'app' => 'home#download', :as=>'app_download'
  #authenticated :user do
    #root :to => 'home#index'
  #end
  root :to => "clients#list"
  devise_for :users, :controllers => { :sessions => "users/sessions" }
  resources :users
end
