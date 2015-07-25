Rails.application.routes.draw do

  root 'static_pages#home'

  get '/words/show_all', to: 'words#show_all'

  resources :users
  resources :words
  get '/login', to: 'sessions#new'
  resources :sessions, only: [:new, :create, :destroy]

end
