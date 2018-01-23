Rails.application.routes.draw do
  root 'uploads#index'
  resources :uploads, only: [:create, :index, :show]
end
