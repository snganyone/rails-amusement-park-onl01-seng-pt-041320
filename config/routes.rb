Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#home'

  post '/users/new' => 'users#create'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'

  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :rides, only: [:new, :create, :show, :edit, :update]
  resources :attractions, only: [:new, :create, :show, :edit, :update]
end
