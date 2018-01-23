Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :secrets, only: [:show, :update, :edit]

  resources :users, only: [:index]

  namespace :api do
    resources :secrets, only: [:index, :show]
    resources :users, only: [:index, :show]
  end
end
