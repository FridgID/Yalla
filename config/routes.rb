Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'tours/:id/confirm', to: 'tours#confirm', as: :confirm
  resources :tours
end
