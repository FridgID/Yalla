Rails.application.routes.draw do
  devise_for :users
  # resources :user, only:
  root to: 'pages#home'
  get 'profile/:id', to: 'users#show', as: :profile
  # get 'settings/:id', to: 'users#edit', as: :settings
end
