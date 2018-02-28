Rails.application.routes.draw do

  get '/events' => 'events#new'
  post '/events' => 'events#create'


  get '/all_events' => 'events#index'
  # add index and show routes

  root 'static_pages#index'

  get '/users' => 'users#index'
  get '/all_users' => 'users#all_users'
  get '/login'    => 'sessions#new'
  post '/login'   => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/signup'   => 'users#new'
  post '/signup'  => 'users#create'
  resources :users
  resources :events
  resources :invitations, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
