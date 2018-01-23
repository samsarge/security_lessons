Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :tasks, except: [:new, :edit, :update] do
    resource :completion, only: [:create, :destroy]
  end
  resource :session, only: [:new, :create, :destroy]
  resource :password_reset_request, only: [:new, :create]
  resource :password_reset, only: [:new, :create]

  root to: 'tasks#index'
end
