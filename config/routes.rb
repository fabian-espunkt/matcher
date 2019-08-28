Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :matchings, only: :index
  resources :appointments, only: :index
  resources :viewings, only: :index
end
