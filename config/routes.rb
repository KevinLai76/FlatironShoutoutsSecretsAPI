Rails.application.routes.draw do
  resources :shoutout_comments
  # resources :users
  resources :secrets
  resources :shoutouts
  resources :secret_comments
  resources :shoutout_dislikes
  resources :secret_dislikes
  resources :shoutout_likes
  resources :secret_likes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/login', to: 'auth#login'
  post '/signup', to: 'users#create'
  get '/profile', to: 'users#profile'
  get '/users', to: 'users#index' 
end
