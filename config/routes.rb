Rails.application.routes.draw do

  # Main view
  root 'home#index'

  # Home
  get '/about', to: 'about#index'

  # Tags
  
  get 'tags/:tag', to: 'posts#index', as: :tag


  # Sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  # User
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # General Posts
  resources :posts

  # Resources avoid to write all this
  # get '/posts',             to: 'posts#index'
  # get '/posts/new',         to: 'posts#new'
  # get '/posts/:id',         to: 'posts#show'
  # get '/posts/:id/edit',    to: 'posts#edit'
  # post '/posts',            to: 'posts#create'
  # patch '/posts/:id',       to: 'posts#update'
  # delete '/posts/:id',      to: 'posts#destroy'



end
