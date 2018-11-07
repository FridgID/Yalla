Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', edit: 'settings'}
  devise_scope :user do
    get 'settings', to: 'devise/registrations#edit'
  end
  root to: 'pages#home'
  get 'profile', to: 'users#show', as: :profile
  put 'profile', to: 'users#update', as: :upload
  get 'tours/:id/confirm', to: 'tours#confirm', as: :confirm
  resources :tours
end
