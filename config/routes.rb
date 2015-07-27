Rails.application.routes.draw do

  root 'static_pages#home'

  get '/words/show_all', to: 'words#show_all'
  get '/test', to: 'static_pages#test'

  resources :users
  resources :words
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  resources :sessions, only: [:new, :create, :destroy]

end
