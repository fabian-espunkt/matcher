Rails.application.routes.draw do
  get 'appointments/index'
  get 'events/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :matchings, only: :index
  resources :appointments, only: :index
  resources :viewings, only: :index
  resources :meetings, only: [:index, :edit, :update]
end
