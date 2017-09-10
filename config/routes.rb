Rails.application.routes.draw do

  root 'posts#index'
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
