require 'api_constraints'

Aasj::Application.routes.draw do

root to: 'info_pages#home'

# infopages

  match '/home', to: 'info_pages#home'
  match '/colophon', to: 'info_pages#colophon'
  match '/literature', to: 'info_pages#literature'
  match '/clear', to: 'meetings#clear_options'
  match '/daily', to: 'info_pages#daily_reflection'


  resources :users
  resources :sessions, only: [:new, :create, :destroy]
    root to: 'meetings#index'
      match '/signup',  to: 'users#new'
      match '/signin',  to: 'sessions#new'
      match '/signout', to: 'sessions#destroy', via: :delete
      match '/new', to: 'meetings#new'

  resources :meetings do 
    root to: 'meetings#index'
    collection { post :import }
   end

  # API versioning

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: ApiConstraints.new(version: 1) do
      resources :meetings  
    end
  end  

end
