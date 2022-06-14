Rails.application.routes.draw do

  root to: 'users#index'

  resources :users
  # get '/users', to: 'users#index', as: 'users'
  # # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get '/users/:id', to: 'users#show', as: 'user'
  # # Defines the root path route ("/")
  # get '/users/new', to: 'users#new' as: 'new_user'
  # root "articles#index"
end
