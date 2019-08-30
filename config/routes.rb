Rails.application.routes.draw do
  get 'appointments/index'
  get 'events/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :matchings, only: :index
  resources :appointments, only: :index
  resources :viewings, only: :index

  get 'profile', to: 'pages#profile'
  patch 'profile/:user_id', to: 'pages#update', as: 'profile_update'

  resources :attendances, only: :index do
    post '/viewings', to: 'viewings#create_like', as: :create_like
    post '/viewings', to: 'viewings#create_dislike', as: :create_dislike
  end
  
  resources :meetings, only: [:index, :edit, :update]
end
