Rails.application.routes.draw do
  root 'users#index'

  devise_for :users, controllers: {
    invitations: 'users/invitations'
  }

  resources :users, only: [:index, :show]
end
